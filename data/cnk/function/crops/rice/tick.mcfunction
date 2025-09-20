execute unless block ~ ~ ~ minecraft:mangrove_propagule[waterlogged=true] run return run function cnk:crops/rice/break
execute unless block ~ ~1 ~ minecraft:light[level=0] run return run function cnk:crops/rice/break

execute if block ~ ~ ~ minecraft:mangrove_propagule[stage=1,waterlogged=true] if score @s cnk.age < @s cnk.max_age run scoreboard players add @s cnk.age 1
execute if block ~ ~ ~ minecraft:mangrove_propagule[stage=1,waterlogged=true] run setblock ~ ~ ~ minecraft:mangrove_propagule[stage=0,waterlogged=true] replace

execute if score @s cnk.age matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:rice_crop_1"
execute if score @s cnk.age matches 1 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 1.375

execute if score @s cnk.age matches 2 run data modify entity @s item.components."minecraft:item_model" set value "cnk:rice_crop_2"
execute if score @s cnk.age matches 2 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 1.4375

execute if score @s cnk.age matches 3 run data modify entity @s item.components."minecraft:item_model" set value "cnk:rice_crop_3"
execute if score @s cnk.age matches 3 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 1.625

execute if score @s cnk.age matches 4 run data modify entity @s item.components."minecraft:item_model" set value "cnk:rice_crop_4"
execute if score @s cnk.age matches 4 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 1.9375

execute if score @s cnk.age matches 5 run data modify entity @s item.components."minecraft:item_model" set value "cnk:rice_crop_5"
execute if score @s cnk.age matches 5 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 2