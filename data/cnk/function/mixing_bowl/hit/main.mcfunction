advancement revoke @s only cnk:hit_mixing_bowl

scoreboard players set $hit_mixing_bowl_check cnk.dummy 0

tag @s add cnk.hit_mixing_bowl
execute as @e[type=minecraft:interaction,tag=cnk.mixing_bowl_interaction,distance=..20] run function cnk:mixing_bowl/hit/check
tag @s remove cnk.hit_mixing_bowl