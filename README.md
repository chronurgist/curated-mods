# curated-mods

This repository contains a curated modpack for Minecraft 1.21.1 with NeoForge 21.1.249. The pack is managed with packwiz and contains 154 mods.

## Install

Use Prism Launcher.

1. Create an instance with Minecraft 1.21.1 and NeoForge 21.1.249.
2. In PowerShell, run:

```powershell
irm https://raw.githubusercontent.com/chronurgist/curated-mods/main/install.ps1 | iex
```

To update the pack automatically before the game starts, run:

```powershell
.\install.ps1 -ConfigureAutoUpdate
```

Add `-Force` if the instance already has a pre-launch command.

## What is included and why

* **Storage:** Applied Energistics 2 plus Extended AE, MEGA Cells, AdvancedAE, Import-Export Card, Network Analyser, Wireless Terminals, and Ars Énergistique integration with Ars Nouveau. This provides the full AE2 system. Refined Storage is not included. Functional Storage is included as a separate early-game storage option.
* **Recipes:** EMI with EMI Loot and EMI Ores. EMI is used instead of JEI. The add-ons show loot tables and ore generation in the recipe viewer.
* **Utility:** Waystones, Sophisticated Backpacks, Functional Storage, Pipez, Modular Routers, Inventory Sorter, Mouse Tweaks, Jade, Polymorph, and Applied Construction Sticks. These reduce common inventory and movement tasks.
* **World:** YUNG's Better Dungeons, Mineshafts, Strongholds, and related mods, plus Dungeon Crawl and L_Ender's Cataclysm. These add structures to explore.
* **Performance:** Sodium, Sodium Extra, Iris, ImmediatelyFast, FerriteCore, ServerCore, and FastSuite. These reduce rendering and tick time.
