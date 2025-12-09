advancement revoke @s only cnk:interact_mixing_bowl

scoreboard players set $interact_mixing_bowl_check cnk.dummy 0

tag @s add cnk.interact_mixing_bowl
execute as @e[type=minecraft:interaction,tag=cnk.mixing_bowl_interaction,distance=..20] run function cnk:mixing_bowl/interact/check
tag @s remove cnk.interact_mixing_bowl