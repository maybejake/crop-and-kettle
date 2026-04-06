data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rice"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/egg

function cnk:recipes/remove_generic/vegetable

loot spawn ~ ~0.25 ~ loot cnk:food/egg_fried_rice

function cnk:cooking_pot/effects/finish_cooking