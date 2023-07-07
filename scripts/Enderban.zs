import minetweaker.item.IItemStack;
import minetweaker.recipes.ICraftingInfo;
import minetweaker.world.IDimension;

val enderchest = <minecraft:ender_chest>;
val obsidian = <minecraft:obsidian>;
val endereye = <minecraft:ender_eye>;

$expand IDimension$id() as int {
  return this.world.provider.dimensionId;
}

recipes.remove(enderchest);
recipes.addShaped(enderchest,
[[obsidian, obsidian, obsidian],
 [obsidian, endereye, obsidian],
 [obsidian, obsidian, obsidian]],
function(out, ins, cinfo as ICraftingInfo){
  if(cinfo != null && cinfo.dimension.id() == 0) {
      return null;
  }
  return out;
});
