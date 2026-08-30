# curated-mods

Curated Minecraft **1.21.1** / **NeoForge 21.1.249** modpack source, managed with [packwiz](https://packwiz.infra.link/).

## Publisher workflow

The Packwiz source is `pack.toml`, `index.toml`, and `mods/*.pw.toml`. Do not commit downloaded JARs, worlds, logs, or configs.

After changing mod metadata, run:

```powershell
packwiz refresh
```

Commit the resulting metadata. The public URL to `pack.toml` is the distribution endpoint.

## Player install (Windows: FreeSM or Prism)

Create a **Minecraft 1.21.1 NeoForge** instance first. After this repository is public, run the hosted installer with the public `pack.toml` URL:

```powershell
irm https://raw.githubusercontent.com/chronurgist/curated-mods/main/install.ps1 | iex
```

To configure an automatic update before each game launch:

```powershell
.\install.ps1 -ConfigureAutoUpdate
```

The installer finds FreeSM/Prism instances, downloads the pinned Packwiz Installer, installs the declared mods, and optionally configures a pre-launch sync. `-ConfigureAutoUpdate` refuses to replace an existing launcher pre-launch command unless `-Force` is supplied.

## Status

The source contains the requested curated mod list plus required dependencies. It intentionally excludes Refined Storage and the other mods named as exclusions in the original pack plan.
