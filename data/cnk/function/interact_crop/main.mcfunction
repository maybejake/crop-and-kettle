scoreboard players set $interact_crop_check cnk.dummy 0

tag @s add cnk.interact_crop
execute as @e[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..20] at @s run function cnk:interact_crop/check
tag @s remove cnk.interact_crop