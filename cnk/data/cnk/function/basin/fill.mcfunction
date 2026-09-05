data modify entity @s item.components."minecraft:custom_model_data".colors set value []
data modify entity @s item.components."minecraft:custom_model_data".colors append from storage cnk:temp distiller.color

data modify entity @s item.components."minecraft:custom_data".cnk.basin.callback set from storage cnk:temp distiller.callback
data modify entity @s item.components."minecraft:custom_data".cnk.basin.liquid set from storage cnk:temp distiller.liquid

scoreboard players add @s cnk.level 1
item modify entity @s contents cnk:update_basin_level