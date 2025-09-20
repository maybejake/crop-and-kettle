data modify entity @s item.components."minecraft:custom_model_data".colors set value []
data modify entity @s item.components."minecraft:custom_model_data".colors append from storage cnk:temp distiller.color

data modify entity @s item.components."minecraft:custom_data".cnk.basin.callback set from storage cnk:temp distiller.callback
data modify entity @s item.components."minecraft:custom_data".cnk.basin.liquid set from storage cnk:temp distiller.liquid

scoreboard players add @s cnk.level 1

execute if score @s cnk.level matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:basin_1"
execute if score @s cnk.level matches 2 run data modify entity @s item.components."minecraft:item_model" set value "cnk:basin_2"
execute if score @s cnk.level matches 3 run data modify entity @s item.components."minecraft:item_model" set value "cnk:basin_3"