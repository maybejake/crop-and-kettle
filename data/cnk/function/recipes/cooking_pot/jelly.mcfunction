data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:slime_ball"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sweet_berries"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

loot spawn ~ ~0.25 ~ loot cnk:food/jelly

function cnk:cooking_pot/effects/finish_cooking