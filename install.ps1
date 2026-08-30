[CmdletBinding()]
param(
    [string]$InstancePath,
    [string]$PackUrl = 'REPLACE_WITH_PUBLIC_PACK_TOML_URL',
    [switch]$ConfigureAutoUpdate,
    [switch]$Force
)

$ErrorActionPreference = 'Stop'
$MinecraftVersion = '1.21.1'
$BootstrapUrl = 'https://github.com/packwiz/packwiz-installer-bootstrap/releases/download/v0.0.3/packwiz-installer-bootstrap.jar'
$InstallerUrl = 'https://github.com/packwiz/packwiz-installer/releases/download/v0.5.14/packwiz-installer.jar'

function Get-LauncherInstances {
    $roots = @(
        (Join-Path $env:APPDATA 'FreesmLauncher\instances'),
        (Join-Path $env:APPDATA 'PrismLauncher\instances')
    ) | Where-Object { Test-Path -LiteralPath $_ }

    foreach ($root in $roots) {
        Get-ChildItem -LiteralPath $root -Directory | Where-Object {
            Test-Path -LiteralPath (Join-Path $_.FullName 'mmc-pack.json')
        } | Select-Object -ExpandProperty FullName
    }
}

function Select-InstancePath {
    param([string[]]$Candidates)

    if ($Candidates.Count -eq 0) {
        throw 'No FreeSM or Prism instances were found. Create a NeoForge 1.21.1 instance first, then rerun with -InstancePath <instance directory>.'
    }
    if ($Candidates.Count -eq 1) {
        return $Candidates[0]
    }

    Write-Host 'Choose the target instance:'
    for ($i = 0; $i -lt $Candidates.Count; $i++) {
        Write-Host "[$($i + 1)] $($Candidates[$i])"
    }
    $choice = Read-Host 'Number'
    if ($choice -notmatch '^\d+$' -or [int]$choice -lt 1 -or [int]$choice -gt $Candidates.Count) {
        throw 'Invalid instance selection.'
    }
    return $Candidates[[int]$choice - 1]
}

function Test-TargetInstance {
    param([string]$Path)

    $packFile = Join-Path $Path 'mmc-pack.json'
    if (-not (Test-Path -LiteralPath $packFile)) {
        throw "'$Path' is not a FreeSM/Prism instance directory (mmc-pack.json is missing)."
    }

    $components = (Get-Content -LiteralPath $packFile -Raw | ConvertFrom-Json).components
    $minecraft = $components | Where-Object uid -eq 'net.minecraft' | Select-Object -First 1
    $neoforge = $components | Where-Object uid -eq 'net.neoforged' | Select-Object -First 1
    if ($minecraft.version -ne $MinecraftVersion -or -not $neoforge) {
        throw "The selected instance must use Minecraft $MinecraftVersion and NeoForge."
    }
}

function Get-Java {
    $java = Get-Command java -ErrorAction SilentlyContinue
    if ($java) { return $java.Source }
    if ($env:JAVA_HOME) {
        $candidate = Join-Path $env:JAVA_HOME 'bin\java.exe'
        if (Test-Path -LiteralPath $candidate) { return $candidate }
    }
    throw 'Java was not found. Install a Java 21 runtime, then rerun this installer.'
}

if ($PackUrl -eq 'REPLACE_WITH_PUBLIC_PACK_TOML_URL') {
    throw 'This installer has not been published yet. Supply -PackUrl with the public URL to pack.toml.'
}

if (-not $InstancePath) {
    $InstancePath = Select-InstancePath -Candidates @(Get-LauncherInstances)
}
$InstancePath = (Resolve-Path -LiteralPath $InstancePath).Path
Test-TargetInstance -Path $InstancePath

$MinecraftPath = Join-Path $InstancePath 'minecraft'
New-Item -ItemType Directory -Force -Path $MinecraftPath | Out-Null
$Bootstrap = Join-Path $MinecraftPath 'packwiz-installer-bootstrap.jar'
$Installer = Join-Path $MinecraftPath 'packwiz-installer.jar'

Write-Host "Installing curated-mods into $InstancePath"
Invoke-WebRequest -Uri $BootstrapUrl -OutFile $Bootstrap
Invoke-WebRequest -Uri $InstallerUrl -OutFile $Installer

$java = Get-Java
Push-Location $MinecraftPath
try {
    & $java -jar $Bootstrap --bootstrap-main-jar $Installer --bootstrap-no-update -g $PackUrl
    if ($LASTEXITCODE -ne 0) {
        throw "Packwiz Installer failed with exit code $LASTEXITCODE."
    }
}
finally {
    Pop-Location
}

if ($ConfigureAutoUpdate) {
    $config = Join-Path $InstancePath 'instance.cfg'
    $command = 'PreLaunchCommand="' + $java + '" -jar packwiz-installer-bootstrap.jar --bootstrap-main-jar packwiz-installer.jar --bootstrap-no-update -g ' + $PackUrl
    $configText = Get-Content -LiteralPath $config -Raw
    if ($configText -match '(?m)^PreLaunchCommand=' -and -not $Force) {
        throw 'The instance already has a pre-launch command. Re-run with -Force only if you want Packwiz to replace it.'
    }
    $configText = [regex]::Replace($configText, '(?m)^PreLaunchCommand=.*\r?\n?', '')
    $configText = $configText.Replace('OverrideCommands=false', "OverrideCommands=true`r`n$command")
    Set-Content -LiteralPath $config -Value $configText -NoNewline
    Write-Host 'Configured automatic Packwiz updates before every launch.'
}

$modCount = @(Get-ChildItem -LiteralPath (Join-Path $MinecraftPath 'mods') -Filter '*.jar' -File).Count
if ($modCount -eq 0) {
    throw 'Packwiz completed without installing mod JARs.'
}
Write-Host "Success: installed $modCount mod JARs. Restart FreeSM/Prism if its Mods page is open."
