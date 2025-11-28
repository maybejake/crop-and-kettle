advancement revoke @s only cnk:interact_plate

scoreboard players set $interact_plate_check cnk.dummy 0

tag @s add cnk.interact_plate
execute as @e[type=minecraft:interaction,tag=cnk.plate_interaction,distance=..20] run function cnk:plate/interact/check
tag @s remove cnk.interact_plate