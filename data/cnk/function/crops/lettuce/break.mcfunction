execute unless block ~ ~ ~ minecraft:pumpkin_stem as @n[type=minecraft:item,nbt={Item:{id:"minecraft:pumpkin_seeds"}},distance=..1] run function cnk:crops/kill

playsound minecraft:block.crop.break block @a ~ ~ ~ 1 1
setblock ~ ~ ~ minecraft:air replace

execute if score @s cnk.age matches 0 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:lettuce_crop_0"}}} ~ ~0.2 ~ 0.28 0.1 0.28 0.07 70 force
execute if score @s cnk.age matches 1 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:lettuce_crop_1"}}} ~ ~0.2 ~ 0.28 0.2 0.28 0.07 70 force
execute if score @s cnk.age matches 2 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:lettuce_crop_2"}}} ~ ~0.2 ~ 0.28 0.3 0.28 0.07 70 force
execute if score @s cnk.age matches 3.. run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:lettuce_crop_3"}}} ~ ~0.2 ~ 0.28 0.5 0.28 0.07 70 force

execute if score @s cnk.age matches ..2 run scoreboard players set $count cnk.dummy 1
execute if score @s cnk.age matches ..2 run loot spawn ~ ~ ~ loot cnk:drops/lettuce_seeds
execute if score @s cnk.age matches 3.. run function cnk:crops/lettuce/reward

execute on passengers run kill @s
kill @s