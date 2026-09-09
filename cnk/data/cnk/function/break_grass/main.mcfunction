scoreboard players set @s cnk.break_short_grass 0
scoreboard players set @s cnk.break_tall_grass 0

execute as @n[type=minecraft:item,tag=!cnk.checked,predicate=cnk:wheat_seeds] at @s run function cnk:break_grass/modify