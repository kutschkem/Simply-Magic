//Wand Cores
val thaumcraftStaffCores = <ore:thaumcraftStaffCores>;
thaumcraftStaffCores.add(<Thaumcraft:WandRod:54>);
thaumcraftStaffCores.add(<Thaumcraft:WandRod:56>);
thaumcraftStaffCores.add(<Thaumcraft:WandRod:57>);
thaumcraftStaffCores.add(<Thaumcraft:WandRod:50>);
thaumcraftStaffCores.add(<Thaumcraft:WandRod:51>);
thaumcraftStaffCores.add(<Thaumcraft:WandRod:52>);
thaumcraftStaffCores.add(<Thaumcraft:WandRod:53>);
thaumcraftStaffCores.add(<Thaumcraft:WandRod:55>);
thaumcraftStaffCores.add(<Thaumcraft:WandRod:100>);

//shards
val netherShards = <ore:shardNether>;
netherShards.add(<ForbiddenMagic:NetherShard>); // Wrath shard
netherShards.add(<ForbiddenMagic:NetherShard:1>);  // Envy Shard
//netherShards.add(<ForbiddenMagic:NetherShard:2>); // Taint Shard - needs to be excluded here because otherwise there is a recipe clash
netherShards.add(<ForbiddenMagic:NetherShard:3>); // Pride Shard
netherShards.add(<ForbiddenMagic:NetherShard:4>); // Lust Shard
netherShards.add(<ForbiddenMagic:NetherShard:5>); // Sloth Shard
netherShards.add(<ForbiddenMagic:NetherShard:6>); // Greed Shard
netherShards.add(<ForbiddenMagic:GluttonyShard>);

val elementalShards = <ore:shardElemental>;
elementalShards.addAll(<ore:shardAir>);
elementalShards.addAll(<ore:shardFire>);
elementalShards.addAll(<ore:shardWater>);
elementalShards.addAll(<ore:shardEarth>);
elementalShards.addAll(<ore:shardOrder>);
elementalShards.addAll(<ore:shardEntropy>);

val anyShard = <ore:shardThaumic>;
anyShard.addAll(<ore:shardElemental>);
anyShard.addAll(<ore:shardNether>);
anyShard.add(<Thaumcraft:ItemShard:6>); // balanced shard
anyShard.add(<ThaumicTinkerer:kamiResource:6>); // nether shard
anyShard.add(<ThaumicTinkerer:kamiResource:7>); // ender shard
