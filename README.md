# curated-mods

This repository contains a curated modpack for Minecraft 1.21.1 with NeoForge 21.1.249. The pack is managed with packwiz and contains 168 mods (133 user-facing mods plus 35 support libraries).

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

<details>
<summary>Storage, automation, and logistics</summary>

- **Applied Energistics 2** — Main digital storage and autocrafting system.
- **Extended AE** — Adds expanded AE2 components.
- **MEGA Cells** — Larger AE2 storage cells.
- **AdvancedAE** — Additional AE2 machines and automation.
- **AE2 Import Export Card** — Simplifies item transfers with AE2.
- **AE2 Network Analyser** — Helps inspect and troubleshoot AE2 networks.
- **Applied Energistics 2 Wireless Terminals** — Wireless access to AE2 networks.
- **Ars Énergistique** — Connects Ars Nouveau with AE2.
- **Functional Storage** — Early-game drawer storage.
- **Sophisticated Backpacks** — Upgradeable portable storage.
- **Pipez** — Simple item, fluid, energy, and gas transport.
- **Super Factory Manager** — Programmable factory automation.
- **Flux Networks** — Wireless power transfer.
- **Powah!** — Power generation and storage.
- **Ender IO** — Machines, conduits, and processing.
- **Simple Magnets** — Convenient item pickup.
- **Item Collectors** — Automatic item collection.
- **Visible Energy** — Displays energy contents clearly.
- **Entangled** — Links inventories and machines remotely.
- **Trash Cans** — Convenient item/fluid/energy disposal.

</details>

<details>
<summary>Magic, farming, and progression</summary>

- **Ars Nouveau** — Spellcasting and magical automation.
- **Ars Additions** — Extra Ars Nouveau content.
- **Mystical Agriculture** — Resource crops.
- **Mystical Agradditions** — Higher-tier Mystical Agriculture content.
- **Apotheosis** — Enchanting, loot, spawners, and progression expansion.
- **Apothic Attributes** — Additional RPG-style attributes.
- **Apothic Enchanting** — Expanded enchanting mechanics.
- **Apothic Spawners** — Improved and customizable spawners.
- **Artifacts** — Equipable utility and combat trinkets.
- **Relics** — Upgradeable utility and combat trinkets.
- **Reliquified Artifacts** — Integrates Artifacts trinkets with Relics progression.
- **Reliquified Ars Nouveau** — Integrates Ars Nouveau content with Relics progression.
- **Colorful Hearts** — Clearer health and damage display.
- **Hostile Neural Networks** — Automated mob-resource simulation.
- **Farmer’s Delight** — Expanded cooking and food progression.
- **Cooking for Blockheads** — Easier kitchen and recipe management.
- **Handcrafted** — Decorative furniture and building pieces.
- **Supplementaries** — Vanilla-style blocks and utility items.
- **Quark** — Broad vanilla-plus improvements and additions.
- **Allthemodium** — High-tier ores, tools, and armor.
- **ATO - All the Ores** — Additional ore resources.
- **AllTheCompressed** — Compressed resource blocks for storage and crafting.
- **Iron Furnaces** — Faster and upgraded furnaces.
- **Time in a Bottle** — Stores and applies time acceleration.
- **TorchMaster** — Prevents hostile mob spawning in selected areas.

</details>

<details>
<summary>World generation and exploration</summary>

- **YUNG’s Better Dungeons** — Improved dungeon generation.
- **YUNG’s Better Mineshafts** — Improved mineshafts.
- **YUNG’s Better Strongholds** — Improved strongholds.
- **YUNG’s Better Desert Temples** — Improved desert temples.
- **YUNG’s Better Jungle Temples** — Improved jungle temples.
- **YUNG’s Better Ocean Monuments** — Improved ocean monuments.
- **YUNG’s Better Nether Fortresses** — Improved Nether fortresses.
- **YUNG’s Better End Island** — Expanded and improved End terrain.
- **YUNG’s Extras** — Additional YUNG’s world-generation content.
- **Dungeon Crawl** — Large underground dungeon structures.
- **L_Ender’s Cataclysm** — Bosses, structures, and challenging combat content.
- **GeOre** — Naturally generated geodes and resource formations.
- **Compact Machines** — Pocket dimensions for compact automation.
- **CompactMachinesPOR** — The 1.21.1 NeoForge Compact Machines implementation.
- **Nature’s Compass** — Locates biomes.
- **Explorer’s Compass** — Locates structures.
- **JourneyMap** — Full-screen and minimap mapping.
- **FTB Chunks** — Chunk claiming and map-based team management.
- **Lootr** — Per-player loot containers in multiplayer.
- **NetherPortalFix** — Prevents portal-linking and return-trip issues.
- **Let Me Despawn** — Prevents unnecessary mob persistence.
- **Chunky** — Pre-generates chunks to improve server stability.

</details>

<details>
<summary>Building and construction</summary>

- **Building Gadgets** — Large-scale building and construction tools.
- **Construction Sticks** — Faster wall and structure placement.
- **Applied Construction Sticks** — AE2-compatible construction tools.
- **FramedBlocks** — Flexible decorative block shapes.
- **Connected Glass** — Connected glass textures.
- **Fusion** — Connected textures and visual block improvements.
- **OpenBlocks Elevator** — Simple vertical elevators.
- **Carry On** — Pick up and move blocks and entities.
- **Easy Villagers** — Simplifies villager handling and automation.
- **Cosmetic Armor Reworked** — Separate cosmetic armor appearance.
- **Overloaded Armor Bar** — Displays armor beyond the vanilla bar.

</details>

<details>
<summary>Inventory, recipes, and interface</summary>

- **EMI** — Primary recipe and item browser.
- **EMI Loot** — Shows loot tables in EMI.
- **EMI Ores** — Shows ore-generation information in EMI.
- **Just Enough Items (JEI)** — Compatibility support for mods that still require JEI.
- **Just Enough Resources (JER)** — Resource and loot information.
- **Just Enough Breeding (JEBr)** — Animal breeding information.
- **Inventory Profiles Next** — Advanced inventory management.
- **Inventory Sorter** — Quick inventory sorting.
- **Mouse Tweaks** — Improved drag-and-click inventory controls.
- **Crafting Tweaks** — Easier crafting-table operations.
- **Crafting on a Stick** — Portable crafting access.
- **Shulker Box Tooltip** — Preview shulker contents.
- **Equipment Compare** — Compare equipped and hovered gear.
- **Item Borders** — Visual item rarity borders.
- **Legendary Tooltips** — Improved item tooltips.
- **Enchantment Descriptions** — Explains enchantment effects.
- **AppleSkin** — Displays hunger and saturation information.
- **Jade** — Block and entity information overlay.
- **Better Advancements** — Improved advancement interface.
- **BetterF3** — More useful and configurable debug screen.
- **Configured** — In-game configuration management.
- **Controlling** — Better keybind search and conflict management.
- **Light Overlay** — Shows hostile-mob spawnable areas.
- **Dark Mode Everywhere** — Dark-themed menus and interfaces.
- **Extreme Sound Muffler** — Mutes selected sounds.
- **Toast Control** — Controls unwanted notification toasts.
- **Just Zoom** — Zoom functionality.
- **Akashic Tome** — Stores multiple guidebooks in one item.
- **Almanac** — In-game documentation and reference material.
- **Observable** — In-game performance diagnostics.
- **FTB Ultimine** — Mines connected blocks efficiently.
- **FTB Backups 2** — Automated world backups.
- **Simple Tomb** — Protects items after death.
- **Waystones** — Fast travel between discovered locations.
- **Comforts** — Sleeping bags and hammocks.
- **Polymorph** — Resolves recipe conflicts.
- **Just Dire Things** — Adds progression, machines, tools, and automation content.

</details>

<details>
<summary>Performance and visuals</summary>

- **Sodium** — Faster client rendering.
- **Sodium Extra** — Additional Sodium graphics settings.
- **Iris Shaders** — Shader support.
- **ImmediatelyFast** — Optimizes immediate-mode rendering.
- **Entity Culling** — Hides entities that cannot be seen.
- **More Culling** — Adds further block and model culling.
- **Dynamic FPS** — Reduces resource usage when unfocused.
- **Distant Horizons** — Extends distant terrain rendering.
- **FerriteCore** — Reduces memory usage.
- **ModernFix** — General performance, memory, and loading improvements.
- **ServerCore** — Server tick and entity performance improvements.
- **FastFurnace** — Optimizes furnace processing.
- **FastWorkbench** — Optimizes crafting-table calculations.
- **FastSuite** — Optimizes recipe lookup.
- **Clumps** — Combines XP orbs to reduce entity overhead.
- **AI Improvements** — Reduces unnecessary mob-AI processing.
- **AttributeFix** — Prevents attribute-related limits and issues.
- **Almost Unified** — Unifies duplicate ores and materials.
- **spark** — Profiling and performance diagnosis.

</details>

<details>
<summary>Resource packs</summary>

- **Fresh Animations** — Animated entity models and textures.
- **Fresh Animations: Extensions** — Additional Fresh Animations entity extensions.
- **Fresh Compats (EMF pack)** — Compatibility fixes for Fresh Animations and modded entities.
- **Fresh Moves** — Animated player movement.

</details>

<details>
<summary>Dependency and support libraries</summary>

These libraries support other mods and generally do not add major standalone features: Architectury API, Balm, Bookshelf, Cloth Config API, Cucumber Library, Curios API, Entity Model Features, Entity Texture Features, FTB Library, FTB Teams, Fzzy Config, GeckoLib, Glodium, GuideME, Iceberg, Konkrete, Kotlin for Forge, libIPN, Lionfish-API, Moonlight Lib, Patchouli, Placebo, PolyLib, Prickle, Prism, Resourceful Lib, Searchables, Sophisticated Core, SuperMartijn642's Config Lib, SuperMartijn642's Core Lib, Titanium, YUNG's API, and Zeta.

</details>
