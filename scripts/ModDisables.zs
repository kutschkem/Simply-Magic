import mods.nei.NEI;
import minetweaker.item.IItemStack;

val disabled_items = [
<JABBA:moverDiamond>,
<OpenBlocks:generic:0>,
<OpenBlocks:generic:1>,
<OpenBlocks:generic:2>,
<OpenBlocks:generic:3>,
<OpenBlocks:generic:5>,
<OpenBlocks:generic:9>,

] as IItemStack[];

for i, item in disabled_items {
recipes.remove(item);
NEI.hide(item);
}
