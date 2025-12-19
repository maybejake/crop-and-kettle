data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:bread"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/egg

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cheese"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/pork

loot spawn ~ ~0.25 ~ loot cnk:food/breakfast_bagel

function cnk:cooking_pot/effects/finish_cooking