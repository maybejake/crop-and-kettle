spreadplayers ~ ~ 5 5 false @s

execute at @s align xyz positioned ~0.5 ~ ~0.5 run function cnk:fizz/summon
execute at @s align xyz positioned ~0.5 ~ ~0.5 run tag @n[type=minecraft:wandering_trader,tag=cnk.fizz_trader,dx=0] add cnk.fizz_whistled
execute at @s align xyz positioned ~0.5 ~ ~0.5 run particle minecraft:poof ~ ~0.5 ~ 0.3 0.4 0.3 0.05 40 normal
execute at @s align xyz positioned ~0.5 ~ ~0.5 run playsound minecraft:block.leaf_litter.break player @a ~ ~ ~ 1 0.8

kill @s