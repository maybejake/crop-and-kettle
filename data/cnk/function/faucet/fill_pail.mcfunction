scoreboard players set $quantity cnk.dummy 0
execute store result score $quantity cnk.dummy run data get entity @s item.components."minecraft:custom_model_data".floats[0]

execute if score $quantity cnk.dummy matches 0 run data modify entity @s item.components."minecraft:custom_data".cnk.pail.liquid set value "water"

execute if score $quantity cnk.dummy matches 0 run data modify entity @s item.components."minecraft:custom_model_data".colors set value []
execute if score $quantity cnk.dummy matches 0 run data modify storage cnk:temp pail.color set value 4159204
execute if score $quantity cnk.dummy matches 0 run function cnk:pail/interact/fill/water_color
execute if score $quantity cnk.dummy matches 0 run data modify entity @s item.components."minecraft:custom_model_data".colors append from storage cnk:temp pail.color

scoreboard players add $quantity cnk.dummy 4
execute if score $quantity cnk.dummy > @s cnk.max_quantity run scoreboard players operation $quantity cnk.dummy = @s cnk.max_quantity

execute store result entity @s item.components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get $quantity cnk.dummy