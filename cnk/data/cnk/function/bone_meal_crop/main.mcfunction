advancement revoke @s only cnk:interact_crop

execute if entity @s[predicate=!cnk:bone_meal/either] run return run function cnk:interact_crop/main

scoreboard players set $bonemeal_crop_check cnk.dummy 0

tag @s add cnk.bonemeal_crop
execute as @e[type=minecraft:interaction,tag=cnk.crop_interaction,distance=..20] at @s run function cnk:bone_meal_crop/check
tag @s remove cnk.bonemeal_crop

execute if score $bonemeal_crop_check cnk.dummy matches 1 run function cnk:bone_meal_crop/success