execute unless block ~ ~ ~ minecraft:wheat run return run function cnk:crops/grape/break
execute unless block ~ ~1 ~ minecraft:air run return run function cnk:crops/grape/break

execute unless block ~ ~ ~ minecraft:wheat[age=0] if score @s cnk.age < @s cnk.max_age run scoreboard players add @s cnk.age 1
execute unless block ~ ~ ~ minecraft:wheat[age=0] run setblock ~ ~ ~ minecraft:wheat replace

execute if score @s cnk.age matches 1 run return run data modify entity @s item.components."minecraft:item_model" set value "cnk:grape_crop_1"
execute if score @s cnk.age matches 2 run return run data modify entity @s item.components."minecraft:item_model" set value "cnk:grape_crop_2"
execute if score @s cnk.age matches 3 run return run data modify entity @s item.components."minecraft:item_model" set value "cnk:grape_crop_3"
execute if score @s cnk.age matches 4 run return run data modify entity @s item.components."minecraft:item_model" set value "cnk:grape_crop_4"
execute if score @s cnk.age matches 5 run return run data modify entity @s item.components."minecraft:item_model" set value "cnk:grape_crop_5"
execute if score @s cnk.age matches 7 run return run data modify entity @s item.components."minecraft:item_model" set value "cnk:grape_crop_6"

