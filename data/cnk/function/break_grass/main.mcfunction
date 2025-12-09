scoreboard players set @s cnk.break_short_grass 0
scoreboard players set @s cnk.break_tall_grass 0

execute as @n[type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds"},Age:0s}] at @s run return run function cnk:break_grass/random
execute as @n[type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds"},Age:1s}] at @s run return run function cnk:break_grass/random