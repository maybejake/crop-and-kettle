advancement revoke @s only cnk:hit_crop

scoreboard players set $hit_crop_check cnk.dummy 0

tag @s add cnk.hit_crop
execute as @e[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..20] at @s run function cnk:hit_crop/check
tag @s remove cnk.hit_crop