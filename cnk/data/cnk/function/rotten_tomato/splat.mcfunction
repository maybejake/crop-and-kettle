playsound minecraft:entity.squid.hurt neutral @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:snowball","components":{"minecraft:item_model":"cnk:rotten_tomato"}}} ~ ~-0.2 ~ 0.1 0.1 0.1 0.15 30 force

execute if entity @s[tag=cnk.very_rotten] run function cnk:rotten_tomato/very_rotten

kill @s