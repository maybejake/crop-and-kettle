data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:potato"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/egg

function cnk:recipes/remove_generic/pork

loot spawn ~ ~0.25 ~ loot cnk:food/classic_breakfast

function cnk:cooking_pot/effects/finish_cooking