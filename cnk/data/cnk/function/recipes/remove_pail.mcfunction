$execute store result score $pail_quantity cnk.dummy run data get storage cnk:temp cooking_pot.Items[{Slot:$(slot)b}].components."minecraft:custom_data".cnk.pail.quantity
scoreboard players remove $pail_quantity cnk.dummy 1

execute if score $pail_quantity cnk.dummy matches 0 run function cnk:recipes/remove with storage cnk:temp cooking_pot
execute if score $pail_quantity cnk.dummy matches 0 run return run loot spawn ~ ~0.25 ~ loot cnk:tools/pail

execute store result storage cnk:temp cooking_pot.pail_quantity int 1 run scoreboard players get $pail_quantity cnk.dummy
function cnk:recipes/pail_macro with storage cnk:temp cooking_pot