execute unless block ~ ~ ~ minecraft:pumpkin_stem run return run function cnk:crops/lettuce/break

execute unless block ~ ~ ~ minecraft:pumpkin_stem[age=0] if score @s cnk.age < @s cnk.max_age run scoreboard players add @s cnk.age 1
execute unless block ~ ~ ~ minecraft:pumpkin_stem[age=0] run setblock ~ ~ ~ minecraft:pumpkin_stem replace

execute if score @s cnk.age matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:lettuce_crop_1"
execute if score @s cnk.age matches 1 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 0.5

execute if score @s cnk.age matches 2 run data modify entity @s item.components."minecraft:item_model" set value "cnk:lettuce_crop_2"
execute if score @s cnk.age matches 2 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 0.875

execute if score @s cnk.age matches 3 run data modify entity @s item.components."minecraft:item_model" set value "cnk:lettuce_crop_3"
execute if score @s cnk.age matches 3 positioned ~ ~-0.5625 ~ as @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1] run return run data modify entity @s height set value 1.0625
