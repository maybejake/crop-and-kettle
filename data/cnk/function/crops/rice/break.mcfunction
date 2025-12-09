execute unless block ~ ~ ~ minecraft:mangrove_propagule as @n[type=minecraft:item,nbt={Item:{id:"minecraft:mangrove_propagule"}},distance=..1] run function cnk:crops/kill

playsound minecraft:block.crop.break block @a ~ ~ ~ 1 1
setblock ~ ~ ~ minecraft:water replace
execute if block ~ ~1 ~ minecraft:light run setblock ~ ~1 ~ minecraft:air replace

execute if score @s cnk.age matches 0 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:rice_crop_0"}}} ~ ~0.2 ~ 0.28 0.4 0.28 0.07 70 force
execute if score @s cnk.age matches 1 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:rice_crop_1"}}} ~ ~0.2 ~ 0.28 0.5 0.28 0.07 70 force
execute if score @s cnk.age matches 2 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:rice_crop_2"}}} ~ ~0.2 ~ 0.28 0.5 0.28 0.07 70 force
execute if score @s cnk.age matches 3 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:rice_crop_3"}}} ~ ~0.2 ~ 0.28 0.6 0.28 0.07 70 force
execute if score @s cnk.age matches 4 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:rice_crop_4"}}} ~ ~0.2 ~ 0.28 0.7 0.28 0.07 70 force
execute if score @s cnk.age matches 5.. run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:rice_crop_5"}}} ~ ~0.2 ~ 0.28 0.7 0.28 0.07 70 force

execute if score @s cnk.age matches ..4 run scoreboard players set $count cnk.dummy 1
execute if score @s cnk.age matches ..4 run loot spawn ~ ~ ~ loot cnk:drops/rice_seeds
execute if score @s cnk.age matches 5.. run function cnk:crops/rice/reward

execute on passengers run kill @s
kill @s