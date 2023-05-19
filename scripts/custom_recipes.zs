import minetweaker.item.IItemStack;

val waystone = <witchery:ingredient:13>;
val runes = [<arsmagica2:rune:1>, <arsmagica2:rune:2>, <arsmagica2:rune:3>, <arsmagica2:rune:4>, <arsmagica2:rune:5>, <arsmagica2:rune:6>, <arsmagica2:rune:7>, <arsmagica2:rune:8>, <arsmagica2:rune:9>, <arsmagica2:rune:10>, <arsmagica2:rune:11>, <arsmagica2:rune:12>, <arsmagica2:rune:13>, <arsmagica2:rune:14>, <arsmagica2:rune:15>, <arsmagica2:rune:16>] as IItemStack[];

// copy waystone to linking book
recipes.addShapeless(<Mystcraft:linkbook>,[<Mystcraft:linkbook>.marked("book"), waystone.marked("waystone")], function(output, inputs, crafting) {
 return inputs.book.withTag(
	{Dimension: inputs.waystone.tag.PosD,
	 DisplayName: inputs.waystone.tag.NameD,
	 SpawnX: inputs.waystone.tag.PosX,
	 SpawnY: inputs.waystone.tag.PosY,
	 SpawnZ: inputs.waystone.tag.PosZ,
         Flags:  inputs.book.tag.Flags
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
 return waystone.withTag(
	{PosD: inputs.waystone.tag.PosD,
	 NameD: inputs.waystone.tag.NameD,
	 PosX: inputs.waystone.tag.PosX,
	 PosY: inputs.waystone.tag.PosY,
	 PosZ: inputs.waystone.tag.PosZ + range
	});
});

recipes.addShaped(waystone,[[rune, waystone.marked("waystone")]
                                        ], function(output, inputs, crafting) {
 return waystone.withTag(
	{PosD: inputs.waystone.tag.PosD,
	 NameD: inputs.waystone.tag.NameD,
	 PosX: inputs.waystone.tag.PosX,
	 PosY: inputs.waystone.tag.PosY,
	 PosZ: inputs.waystone.tag.PosZ - range
	});
});


recipes.addShaped(waystone,[[waystone.marked("waystone")],
                            [rune]            ], function(output, inputs, crafting) {
 return waystone.withTag(
	{PosD: inputs.waystone.tag.PosD,
	 NameD: inputs.waystone.tag.NameD,
	 PosX: inputs.waystone.tag.PosX + range,
	 PosY: inputs.waystone.tag.PosY,
	 PosZ: inputs.waystone.tag.PosZ
	});
});


recipes.addShaped(waystone,[[rune],
                            [waystone.marked("waystone")]            ], function(output, inputs, crafting) {
 return waystone.withTag(
	{PosD: inputs.waystone.tag.PosD,
	 NameD: inputs.waystone.tag.NameD,
	 PosX: inputs.waystone.tag.PosX - range,
	 PosY: inputs.waystone.tag.PosY,
	 PosZ: inputs.waystone.tag.PosZ
	});
});


range = range * 2;

}


// workaround for Thaumic Horizons bug
recipes.addShapeless(<ThaumicHorizons:syringeEmpty>,[<ThaumicHorizons:syringeEmpty:2>]);
// allow emptying blood syringes
recipes.addShapeless(<ThaumicHorizons:syringeEmpty>,[<ThaumicHorizons:syringeBlood>]);

//ideas:
// - allow void putty to repair poppets of vampirism
// - put nodes / animals stored in AM2 Appropriation spell into thaumcraft jar
