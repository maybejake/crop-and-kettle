execute store result score $current_quantity cnk.dummy run data get entity @s item.components."minecraft:custom_model_data".floats[0]
execute if score $current_quantity cnk.dummy >= @s cnk.max_quantity run return fail

#empty, set liquid and color
execute if score $current_quantity cnk.dummy matches 0 run data modify entity @s item.components."minecraft:custom_data".cnk.pail.liquid set from storage cnk:temp pail.liquid
execute if score $current_quantity cnk.dummy matches 0 run data modify entity @s item.components."minecraft:custom_model_data".colors set value []
execute if score $current_quantity cnk.dummy matches 0 run data modify entity @s item.components."minecraft:custom_model_data".colors append from storage cnk:temp pail.color

scoreboard players operation $current_quantity cnk.dummy += $quantity cnk.dummy
execute if score $current_quantity cnk.dummy > @s cnk.max_quantity run scoreboard players operation $current_quantity cnk.dummy = @s cnk.max_quantity

execute store result entity @s item.components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get $current_quantity cnk.dummy
return 1