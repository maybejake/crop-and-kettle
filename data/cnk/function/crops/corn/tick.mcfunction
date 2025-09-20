execute unless block ~ ~ ~ minecraft:wheat run return run function cnk:crops/corn/break
execute unless block ~ ~1 ~ minecraft:air run return run function cnk:crops/corn/break

execute unless block ~ ~ ~ minecraft:wheat[age=0] if score @s cnk.age < @s cnk.max_age run scoreboard players add @s cnk.age 1
execute unless block ~ ~ ~ minecraft:wheat[age=0] run setblock ~ ~ ~ minecraft:wheat replace

execute if score @s cnk.age matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:corn_crop_1"
execute if score @s cnk.age matches 1 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 0.625

execute if score @s cnk.age matches 2 run data modify entity @s item.components."minecraft:item_model" set value "cnk:corn_crop_2"
execute if score @s cnk.age matches 2 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 0.8125

execute if score @s cnk.age matches 3 run data modify entity @s item.components."minecraft:item_model" set value "cnk:corn_crop_3"
execute if score @s cnk.age matches 3 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 1.0625

execute if score @s cnk.age matches 4 run data modify entity @s item.components."minecraft:item_model" set value "cnk:corn_crop_4"
execute if score @s cnk.age matches 4 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 1.375

execute if score @s cnk.age matches 5 run data modify entity @s item.components."minecraft:item_model" set value "cnk:corn_crop_5"
execute if score @s cnk.age matches 5 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 1.875

execute if score @s cnk.age matches 6 run data modify entity @s item.components."minecraft:item_model" set value "cnk:corn_crop_6"
execute if score @s cnk.age matches 6 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 2.0625

execute if score @s cnk.age matches 7 run data modify entity @s item.components."minecraft:item_model" set value "cnk:corn_crop_7"
execute if score @s cnk.age matches 7 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 2.0625