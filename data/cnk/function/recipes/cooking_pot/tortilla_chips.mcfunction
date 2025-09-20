data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tortilla"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot
loot spawn ~ ~0.25 ~ loot cnk:other/glass_bottle
loot spawn ~ ~0.25 ~ loot cnk:food/tortilla_chips

function cnk:cooking_pot/effects/finish_cooking