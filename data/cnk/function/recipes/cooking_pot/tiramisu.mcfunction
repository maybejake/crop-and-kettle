data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/milk

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"coffee"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:cocoa_beans"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

loot spawn ~ ~0.25 ~ loot cnk:food/tiramisu

function cnk:cooking_pot/effects/finish_cooking