execute unless block ~ ~ ~ minecraft:pumpkin_stem as @n[type=minecraft:item,nbt={Item:{id:"minecraft:pumpkin_seeds"}},distance=..1] run function cnk:crops/kill

playsound minecraft:block.crop.break block @a ~ ~ ~ 1 1
setblock ~ ~ ~ minecraft:air replace

execute if score @s cnk.age matches 0 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:chili_pepper_crop_0"}}} ~ ~0.2 ~ 0.28 0.2 0.28 0.07 70 force
execute if score @s cnk.age matches 1 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:chili_pepper_crop_1"}}} ~ ~0.2 ~ 0.28 0.3 0.28 0.07 70 force
execute if score @s cnk.age matches 2 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:chili_pepper_crop_2"}}} ~ ~0.2 ~ 0.28 0.4 0.28 0.07 70 force
execute if score @s cnk.age matches 3 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:chili_pepper_crop_3"}}} ~ ~0.2 ~ 0.28 0.5 0.28 0.07 70 force
execute if score @s cnk.age matches 4 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:chili_pepper_crop_4"}}} ~ ~0.2 ~ 0.28 0.6 0.28 0.07 70 force
execute if score @s cnk.age matches 5 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:chili_pepper_crop_5"}}} ~ ~0.2 ~ 0.28 0.7 0.28 0.07 70 force
execute if score @s cnk.age matches 6..7 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:chili_pepper_crop_6"}}} ~ ~0.2 ~ 0.28 0.7 0.28 0.07 70 force
execute if score @s cnk.age matches 8 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:chili_pepper_crop_7"}}} ~ ~0.2 ~ 0.28 0.7 0.28 0.07 70 force

execute if score @s cnk.age matches ..7 run scoreboard players set $count cnk.dummy 1
execute if score @s cnk.age matches ..7 run loot spawn ~ ~ ~ loot cnk:drops/chili_pepper_seeds
execute if score @s cnk.age matches 8.. run function cnk:crops/chili_pepper/reward

execute on passengers run kill @s
kill @s