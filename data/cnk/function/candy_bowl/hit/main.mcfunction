advancement revoke @s only cnk:hit_candy_bowl

scoreboard players set $hit_candy_bowl_check cnk.dummy 0

tag @s add cnk.hit_candy_bowl
execute as @e[type=minecraft:interaction,tag=cnk.candy_bowl_interaction,distance=..20] run function cnk:candy_bowl/hit/check
tag @s remove cnk.hit_candy_bowl