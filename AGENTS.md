# AGENTS — curated-mods

Pack source: Minecraft 1.21.1 / NeoForge 21.1.249, `packwiz` (`pack.toml` + `index.toml` + `mods/*.pw.toml`). Distribution endpoint: `https://raw.githubusercontent.com/chronurgist/curated-mods/main/pack.toml`.

## Publisher steps

1. Add/remove mods via `packwiz modrinth add|remove` or `packwiz curseforge add|remove` (requires `packwiz` installed locally).
2. `packwiz refresh` — regenerates `index.toml` hashes.
3. `git add pack.toml index.toml mods && commit && push`.

## Reference

* Source is metadata-only. Never commit `mods/*.jar`, `*.jar`, `config/`, `saves/`, `logs/`, `screenshots/`, `shaderpacks/`, `resourcepacks/` (see `.gitignore`).
* Current: 156 mods, EMI (with EMI Loot/Ores + Fzzy Config) replaces JEI, CompactMachinesPOR is the 1.21.1 Compact Machines, Ars Énergistique integrates Applied Energistics 2 with Ars Nouveau, and GeOre adds geodes. Intentionally excludes Refined Storage.
* `install.ps1` — Windows Prism one-shot. Pins `packwiz-installer 0.5.14` + `bootstrap 0.0.3`. Finds Prism instances or prompts for a path. `-ConfigureAutoUpdate` refuses to overwrite existing `PreLaunchCommand` without `-Force`.
* 26.1 port: see `26.1-neoforge-compatibility.md` for the current compatibility matrix. Branch before bumping `pack.toml` versions.
