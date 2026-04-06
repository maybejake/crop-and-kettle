advancement revoke @s only cnk:interact_candy_bowl

scoreboard players set $interact_candy_bowl_check cnk.dummy 0

tag @s add cnk.interact_candy_bowl
execute as @e[type=minecraft:interaction,tag=cnk.candy_bowl_interaction,distance=..20] run function cnk:candy_bowl/interact/check
tag @s remove cnk.interact_candy_bowl