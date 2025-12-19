playsound minecraft:entity.squid.hurt neutral @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:snowball","components":{"minecraft:item_model":"cnk:rotten_tomato"}}} ~ ~-0.2 ~ 0.1 0.1 0.1 0.15 30 force

tag @s add cnk.exploding_tomato

execute if entity @s[tag=cnk.very_rotten] run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 1
execute if entity @s[tag=cnk.very_rotten] run particle minecraft:explosion ~ ~-0.2 ~ 0 0 0 0 1 force
execute if entity @s[tag=cnk.very_rotten] run particle minecraft:cloud ~ ~-0.2 ~ 0.5 0.5 0.5 0.1 30 force
execute if entity @s[tag=cnk.very_rotten] run particle minecraft:item{item:{id:"minecraft:snowball","components":{"minecraft:item_model":"cnk:rotten_tomato"}}} ~ ~-0.2 ~ 0.1 0.1 0.1 0.3 200 force
execute if entity @s[tag=cnk.very_rotten] as @e[type=!minecraft:marker,distance=..3,tag=!smithed.block,tag=!smithed.entity,tag=!smithed.strict] run damage @s 5 minecraft:explosion by @n[type=minecraft:marker,tag=cnk.exploding_tomato] from @n[type=minecraft:marker,tag=cnk.exploding_tomato]

kill @s