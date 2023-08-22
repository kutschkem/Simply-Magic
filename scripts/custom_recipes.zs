import minetweaker.item.IItemStack;

val waystone = <witchery:ingredient:13>;
val runes = [<arsmagica2:rune:1>, <arsmagica2:rune:2>, <arsmagica2:rune:3>, <arsmagica2:rune:4>, <arsmagica2:rune:5>, <arsmagica2:rune:6>, <arsmagica2:rune:7>, <arsmagica2:rune:8>, <arsmagica2:rune:9>, <arsmagica2:rune:10>, <arsmagica2:rune:11>, <arsmagica2:rune:12>, <arsmagica2:rune:13>, <arsmagica2:rune:14>, <arsmagica2:rune:15>, <arsmagica2:rune:16>] as IItemStack[];

// copy waystone to linking book
recipes.addShapeless(<Mystcraft:linkbook>,[<Mystcraft:linkbook>.marked("book"), waystone.marked("waystone")], function(output, inputs, crafting) {
 return inputs.book.updateTag(
	{Dimension: inputs.waystone.tag.PosD,
	 DisplayName: inputs.waystone.tag.NameD,
	 SpawnX: inputs.waystone.tag.PosX,
	 SpawnY: inputs.waystone.tag.PosY,
	 SpawnZ: inputs.waystone.tag.PosZ
	});
});


//add recipe for link modifier
val brewFlowingSpirit = <witchery:ingredient:96>;
val enderAir = <Botania:manaResource:15>;
recipes.addShaped(<Mystcraft:BlockLinkModifier>,[[<Mystcraft:BlockCrystal>,brewFlowingSpirit ,<Mystcraft:BlockCrystal>],
                                                 [<ThaumicHorizons:voidPutty>,<Mystcraft:BlockBookBinder>,<ThaumicHorizons:voidPutty>],
                                                 [<Mystcraft:BlockCrystal>,enderAir,<Mystcraft:BlockCrystal>]]);

// redirect waystone
var range = 1;

for i, rune in runes {

recipes.addShaped(waystone,[[waystone.marked("waystone"), rune]
                                        ], function(output, inputs, crafting) {
 return inputs.waystone.updateTag(
	{
	 PosZ: inputs.waystone.tag.PosZ + range
	});
});

recipes.addShaped(waystone,[[rune, waystone.marked("waystone")]
                                        ], function(output, inputs, crafting) {
 return inputs.waystone.updateTag(
	{
	 PosZ: inputs.waystone.tag.PosZ - range
	});
});


recipes.addShaped(waystone,[[waystone.marked("waystone")],
                            [rune]            ], function(output, inputs, crafting) {
 return inputs.waystone.updateTag(
	{
	 PosX: inputs.waystone.tag.PosX + range
	});
});


recipes.addShaped(waystone,[[rune],
                            [waystone.marked("waystone")]            ], function(output, inputs, crafting) {
 return inputs.waystone.updateTag(
	{
	 PosX: inputs.waystone.tag.PosX - range
	});
});


range = range * 2;

}


// workaround for Thaumic Horizons bug
recipes.addShapeless(<ThaumicHorizons:syringeEmpty>,[<ThaumicHorizons:syringeEmpty:2>]);
// allow emptying blood syringes
recipes.addShapeless(<ThaumicHorizons:syringeEmpty>,[<ThaumicHorizons:syringeBlood>]);

// make getting started with Botania easier since we turned off flower generation
// bonemeal is hard to get in the beginning, so allow substitution with wood ash
recipes.addShapeless(<Botania:fertilizer>,[<witchery:ingredient:18>,<witchery:ingredient:18>,<minecraft:dye:11>,<minecraft:dye:11>,<minecraft:dye:1>,<minecraft:dye:1>]);

// add recipe for otherwise unobtainable moonstone ore
val infinityOrb = <ore:infinityOrb>;
infinityOrb.add(<arsmagica2:rune:17>);
infinityOrb.add(<arsmagica2:rune:18>);
infinityOrb.add(<arsmagica2:rune:19>);
val moonstoneOre = <arsmagica2:vinteumOre:3>;

recipes.addShaped(moonstoneOre * 8,[
[<ore:stone>,<ore:stone>,<ore:stone>],
[<ore:stone>,<ore:infinityOrb>,<ore:stone>],
[<ore:stone>,<ore:stone>,<ore:stone>]
]);

val lunarTides = <arsmagica2:flickerFocus:134>;

recipes.addShaped(moonstoneOre * 8,[
[<ore:stone>,<ore:stone>,<ore:stone>],
[<ore:stone>,lunarTides.reuse(),<ore:stone>],
[<ore:stone>,<ore:stone>,<ore:stone>]
]);


//add missing thaumcraft aspects
val witcherySeeds = [<witchery:seedsbelladonna>,<witchery:seedsartichoke>,<witchery:seedsmandrake>,<witchery:seedssnowbell>] as IItemStack[];

for i, witcherySeed in witcherySeeds {
mods.thaumcraft.Aspects.set(witcherySeed, "herba 1");
}


// fix for issue #2 (Timeless Ivy can't be applied to Boots of the Meteor/Comet)
val explorationBoots = [<ThaumicExploration:bootsMeteor>,<ThaumicExploration:bootsComet>] as IItemStack[];

for i, boots in explorationBoots {
recipes.addShapeless(boots,
   [boots.marked("boots"),<Botania:regenIvy>,
    <minecraft:leather>,<minecraft:leather>,<minecraft:leather>],
   function(output, inputs, crafting){
     return inputs.boots.updateTag({
     Botania_regenIvy: 1  
});
});
}

//ideas:
// - allow void putty to repair poppets of vampirism
// - put nodes / animals stored in AM2 Appropriation spell into thaumcraft jar
// allow usage of nether shards for arcane stone
