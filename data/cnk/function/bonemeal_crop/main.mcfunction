advancement revoke @s only cnk:interact_crop

execute if entity @s[predicate=!cnk:bone_meal] run return run function cnk:interact_crop/main

scoreboard players set $bonemeal_crop_check cnk.dummy 0

tag @s add cnk.bonemeal_crop
execute as @e[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..20] at @s run function cnk:bonemeal_crop/check
execute if score $bonemeal_crop_check cnk.dummy matches 1 run clear @s[gamemode=!creative] minecraft:bone_meal 1
tag @s remove cnk.bonemeal_crop