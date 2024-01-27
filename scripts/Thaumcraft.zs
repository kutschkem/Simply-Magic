val anyShard = <ore:shardThaumic>;
val arcaneStone = <Thaumcraft:blockCosmeticSolid:6>;

/* - arcane stone */

mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockCosmeticSolid:6>);
mods.thaumcraft.Arcane.addShaped("ARCANESTONE", <Thaumcraft:blockCosmeticSolid:6>*9, "ignis 1, terra 1", [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, anyShard, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);
/* -- conjuration recipe from Infinity Evolved Expert */
mods.botania.ManaInfusion.addConjuration(<Thaumcraft:blockCosmeticSolid:6>*2, <Thaumcraft:blockCosmeticSolid:6>, 1000);

/* - ethereal wall */

mods.thaumcraft.Arcane.removeRecipe(<WitchingGadgets:WG_StoneDevice>);
mods.thaumcraft.Arcane.addShaped("ETHEREALWALL", <WitchingGadgets:WG_StoneDevice>*6, 
"ordo 5, terra 3", 
[[arcaneStone, anyShard, arcaneStone], 
 [arcaneStone, <minecraft:redstone_torch>, arcaneStone], 
[arcaneStone, null, arcaneStone]]);

/* - ageing stone */

mods.thaumcraft.Arcane.removeRecipe(<WitchingGadgets:WG_StoneDevice:7>);
mods.thaumcraft.Arcane.addShaped("AGEINGSTONE", <WitchingGadgets:WG_StoneDevice:7>, "ordo 10, perditio 10", [[null, anyShard, null], [arcaneStone, <minecraft:clock>, arcaneStone], [null, anyShard, null]]);

/* - x4 ore processing */

mods.thaumcraft.Crucible.addRecipe("PUREIRON", <Thaumcraft:ItemNugget:16>, <aobd:dustIron>, "metallum 15, ordo 15");
mods.thaumcraft.Crucible.addRecipe("PUREGOLD", <Thaumcraft:ItemNugget:31>, <aobd:dustGold>, "metallum 15, ordo 15");


/* - Research (WIP) */
/* -- Arcane Stone */
mods.thaumcraft.Research.clearPages("ARCANESTONE");
mods.thaumcraft.Research.addPage("ARCANESTONE", "tc.research_page.ARCANESTONE.1");
mods.thaumcraft.Research.addArcanePage("ARCANESTONE", <Thaumcraft:blockCosmeticSolid:6>);
mods.thaumcraft.Research.addCraftingPage("ARCANESTONE", <Thaumcraft:blockCosmeticSolid:7>);
mods.thaumcraft.Research.addCraftingPage("ARCANESTONE", <Thaumcraft:blockStairsArcaneStone>);
mods.thaumcraft.Research.addCraftingPage("ARCANESTONE", <Thaumcraft:blockCosmeticSlabStone>);

/* -- Ethereal wall */
mods.thaumcraft.Research.clearPages("ETHEREALWALL");
mods.thaumcraft.Research.addPage("ETHEREALWALL", "witchinggadgets_research_page.ETHEREALWALL.1");
mods.thaumcraft.Research.addPage("ETHEREALWALL", "witchinggadgets_research_page.ETHEREALWALL.2");
mods.thaumcraft.Research.addArcanePage("ETHEREALWALL", <WitchingGadgets:WG_StoneDevice>);

/* -- Ageing Stone */
mods.thaumcraft.Research.clearPages("AGEINGSTONE");
mods.thaumcraft.Research.addPage("AGEINGSTONE", "witchinggadgets_research_page.AGEINGSTONE.1");
mods.thaumcraft.Research.addArcanePage("AGEINGSTONE", <WitchingGadgets:WG_StoneDevice:7>);
