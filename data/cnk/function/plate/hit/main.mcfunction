advancement revoke @s only cnk:hit_plate

scoreboard players set $hit_plate_check cnk.dummy 0

tag @s add cnk.hit_plate
execute as @e[type=minecraft:interaction,tag=cnk.plate_interaction,distance=..20] run function cnk:plate/hit/check
tag @s remove cnk.hit_plate