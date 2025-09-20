data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/pork

loot spawn ~ ~0.25 ~ loot cnk:food/sausage_roll

function cnk:cooking_pot/effects/finish_cooking