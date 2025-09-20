playsound minecraft:block.crop.break block @a ~ ~ ~ 1 1
setblock ~ ~ ~ minecraft:air replace

kill @n[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:wheat_seeds"}},distance=..1]
kill @n[type=minecraft:item,nbt={Age:1s,Item:{id:"minecraft:wheat_seeds"}},distance=..1]

execute if score @s cnk.age matches 0 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:corn_crop_0"}}} ~ ~-0.4 ~ 0.28 0.2 0.28 0.07 70 force
execute if score @s cnk.age matches 1 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:corn_crop_1"}}} ~ ~-0.4 ~ 0.28 0.3 0.28 0.07 70 force
execute if score @s cnk.age matches 2 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:corn_crop_2"}}} ~ ~-0.4 ~ 0.28 0.4 0.28 0.07 70 force
execute if score @s cnk.age matches 3 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:corn_crop_3"}}} ~ ~-0.4 ~ 0.28 0.5 0.28 0.07 70 force
execute if score @s cnk.age matches 4 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:corn_crop_4"}}} ~ ~-0.4 ~ 0.28 0.6 0.28 0.07 70 force
execute if score @s cnk.age matches 5 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:corn_crop_5"}}} ~ ~-0.4 ~ 0.28 0.7 0.28 0.07 70 force
execute if score @s cnk.age matches 6 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:corn_crop_6"}}} ~ ~-0.4 ~ 0.28 0.8 0.28 0.07 70 force
execute if score @s cnk.age matches 7.. run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:corn_crop_7"}}} ~ ~-0.4 ~ 0.28 0.8 0.28 0.07 70 force

execute if score @s cnk.age matches ..6 run function cnk:seeds/corn/summon {count:1}
execute if score @s cnk.age matches 7.. run function cnk:crops/corn/reward with storage cnk:temp

execute positioned ~ ~-0.5625 ~ run kill @n[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..0.1]
kill @s