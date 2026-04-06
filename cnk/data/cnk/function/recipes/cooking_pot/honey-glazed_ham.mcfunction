function cnk:recipes/remove_generic/pork

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:honey_bottle"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot
loot spawn ~ ~0.25 ~ loot cnk:other/glass_bottle

loot spawn ~ ~0.25 ~ loot cnk:food/honey-glazed_ham

function cnk:cooking_pot/effects/finish_cooking