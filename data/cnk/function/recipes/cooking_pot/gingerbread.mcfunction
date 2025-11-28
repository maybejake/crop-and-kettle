data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"dough"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"ginger"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cinnamon"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

function cnk:recipes/remove_generic/milk

execute store result score $cookie_type cnk.dummy run random value 1..6
execute if score $cookie_type cnk.dummy matches 1 run loot spawn ~ ~0.25 ~ loot cnk:food/gingerbread/normal
execute if score $cookie_type cnk.dummy matches 2 run loot spawn ~ ~0.25 ~ loot cnk:food/gingerbread/blush
execute if score $cookie_type cnk.dummy matches 3 run loot spawn ~ ~0.25 ~ loot cnk:food/gingerbread/hat
execute if score $cookie_type cnk.dummy matches 4 run loot spawn ~ ~0.25 ~ loot cnk:food/gingerbread/pants
execute if score $cookie_type cnk.dummy matches 5 run loot spawn ~ ~0.25 ~ loot cnk:food/gingerbread/psy
execute if score $cookie_type cnk.dummy matches 6 run loot spawn ~ ~0.25 ~ loot cnk:food/gingerbread/scarf

function cnk:cooking_pot/effects/finish_cooking