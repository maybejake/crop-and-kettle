playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 1
particle minecraft:explosion ~ ~-0.2 ~ 0 0 0 0 1 force
particle minecraft:cloud ~ ~-0.2 ~ 0.5 0.5 0.5 0.1 30 force
particle minecraft:item{item:{id:"minecraft:snowball","components":{"minecraft:item_model":"cnk:rotten_tomato"}}} ~ ~-0.2 ~ 0.1 0.1 0.1 0.3 200 force
execute as @e[type=!minecraft:marker,distance=..3,tag=!smithed.block,tag=!smithed.entity,tag=!smithed.strict] run damage @s 5 minecraft:explosion by @n[type=minecraft:marker,tag=cnk.very_rotten] from @n[type=minecraft:marker,tag=cnk.very_rotten]