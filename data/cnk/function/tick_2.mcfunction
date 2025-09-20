schedule function cnk:tick_2 2t replace

execute as @e[type=minecraft:item_display,tag=cnk.block] at @s run function cnk:blocks

execute as @e[type=minecraft:marker,tag=cnk.projectile,predicate=!cnk:vehicle] at @s run function cnk:projectiles