data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rice"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/meat

function cnk:recipes/remove_generic/egg

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:carrot"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

loot spawn ~ ~0.25 ~ loot cnk:food/bibimbap

function cnk:cooking_pot/effects/finish_cooking