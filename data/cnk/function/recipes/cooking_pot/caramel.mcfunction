data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"butter"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/milk

loot spawn ~ ~0.25 ~ loot cnk:food/caramel

function cnk:cooking_pot/effects/finish_cooking