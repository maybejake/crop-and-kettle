data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:stick"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/meat

function cnk:recipes/remove_generic/vegetable

loot spawn ~ ~0.25 ~ loot cnk:food/kebab

function cnk:cooking_pot/effects/finish_cooking