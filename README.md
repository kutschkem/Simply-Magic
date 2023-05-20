# Simply-Magic
Simply Magic aims to fill the gaps in user understanding of magic-based mods by providing a supplementary quest book that sets milestones and points of progression for the player.

If you wish to contribute to this mod pack through quest additions, corrections, clarifications, or config changes, make an issue with the tag [Proposal] and summarize your proposed change. Any issues marked with To-Do are approved for changes. If you decide to make a contribution to an approved task, simply make a pull request with a summary and explanation of what you changed or added, and if it resolves the issue entirely.

Those that wish to take on approved tasks need to simply state that they intend to take on the project (IN that issue) and you will be assigned.

Those that wish to modify or add quests need to keep the following in mind:

1. It needs to have the same tone as the rest of the quest book. This is to ensure a sort of consistency in what to expect in each quest line.

2. I will edit and modify your presented quests if information is unclear or does not have the same theme as the rest of the quest book.

3. You will be credited for each quest you create or change.

4. Do not change any quests that you were not approved for, and PLEASE document every change you have made and why you made it. This is to make sure that everybody is on the same page for merges and updates.

5. By submitting quests and pull requests, you relinquish the rights of the quests and config/mod changes to this repository and are not promised any future modifications over the same/differing/future config/mod changes.


Link to Potion ID's List: https://docs.google.com/spreadsheets/d/1YgsWijqd6QDn8tgdzI51tcKWUuARejbI0ScFUn1_ldU/edit?usp=sharing


# kutschkem's Fork

After almost seven years since Simply Magic last released, I am still not getting over this pack, so I put some of the adaptations I made on Github.

I am playing two versions which differ by these important points, which defines some of the goals of this fork:

1) On my PC, I added Chromaticraft
2) On my phone, I play with pojavlauncher

So the goal is: Make sure that the modpack is compatible with pojavlauncher, but at the same time Chromaticraft can be added without any issues. I will not distribute Chromaticraft out of respect for Reika who doesn't seem to want that without approval, but provide my configs to make sure potion/enchantment/biome ids have no conflicts.

# Changes from original Simply magic

- No HQM, I don't like it. I kept the quests, so you can just add HQM and have all the quests original Simply Magic changed


- Mods updated:
  - accidentalcircumstentialevents (1.12.10 -> 1.12.11)
  - AppleCore (1.3.2 -> 3.1.1)
  - BiblioCraft (1.11.5 -> 1.11.7)
  - Carpenter's Blocks (3.3.8.1 -> 3.3.8.2)
  - CraftTweaker (3.0.13 -> 3.1.0-legacy)
  - FarSeek (1.0.11 -> 2.0.1)
  - fastcraft (1.23 -> 1.25)
  - ironchest (6.0.60.741-universal -> 6.0.62.742-universal)
  - mystcraft (0.12.3.03 -> 0.12.3.04)
  - OpenBlocks (1.5.1 -> 1.6)
  - OpenModsLib (0.9.1 -> 0.10.1)
  - StorageDrawers (1.10.6 -> 1.10.9)
  - Streams (0.2 -> 0.3.4)

- Mods added:
  - Arcane Arteries (0.8.5)
  - FovControl (1.2.1)
  - fpsplus
  - NotEnoughResources (0.1.0-122)
  - RealTimeClock (0.2)
  - Squidless (0.6.1)

- Mods removed:
  - Journey Map (personal preference I think)
  - Morpheus  (no idea why, possibly some problems)
  - ThaumicInfusion (some incompatibility I don't remember)
  - CofHCore (incompatibility with renderer used by pojavlauncher)
  - HQM (simply add back if you want quests)


Config changes:
  - disable all update checkers
  - fix Potion ID conflicts
  - no starting books
  - some performance optimizations
  - disable Thaumcraft aspects in WAILA
  - reduce griefing (from mobs and players)

Custom CraftTweaker scripts:
  - add recipe to copy the location from a Witchery waystone to a mystcraft linking book
  - add lategame recipe for mystcraft link modifier
  - add recipes to modify the location of waystones
  - add workaround for Thaumic Horizons unusable empty syringes (craft the wrong kind to get the right kind)
  - allow emptying of Thaumic Horizons syringes
  - disable AM2 moonstone meteors
  - disable AM2 hecate (they target passive mobs)
  - disable April's fools stuff
  - disable Witchery brew and gas as mystcraft fluid
  - disable Botania ManaFluxField (no RF in this pack)
  - disable Botania Flower gen, replace early game with Floral Fertilizer recipe using Witchery wood ash
  - enable chickes shedding feathers
  - disable Witchery coven visits
