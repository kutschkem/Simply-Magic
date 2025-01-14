import minetweaker.item.IItemStack;
import minetweaker.recipes.ICraftingInfo;
import minetweaker.world.IDimension;

val enderchest = <minecraft:ender_chest>;
val obsidian = <minecraft:obsidian>;
val endereye = <minecraft:ender_eye>;

val dim_spirit_world = -37;

recipes.remove(enderchest);
recipes.addShaped(enderchest,
[[obsidian, obsidian, obsidian],
 [obsidian, endereye, obsidian],
 [obsidian, obsidian, obsidian]],
function(out as IItemStack, ins, cinfo as ICraftingInfo){
  if(isNull(cinfo.dimension) || cinfo.dimension.id == dim_spirit_world) {
      return null;
  }
  return out;
});


val book_binder = <Mystcraft:BlockBookBinder>;

recipes.remove(book_binder);
recipes.addShaped(book_binder,
[[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
 [<ore:plankWood>, null, <ore:plankWood>]],
function(out as IItemStack, ins, cinfo as ICraftingInfo){
  if(isNull(cinfo.dimension) || cinfo.dimension.id == dim_spirit_world) {
      return null;
  }
  return out;
});
