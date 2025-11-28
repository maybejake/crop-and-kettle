advancement revoke @s only cnk:hit_mr_kettle

scoreboard players set $hit_mr_kettle_check cnk.dummy 0

tag @s add cnk.hit_mr_kettle
execute as @e[type=minecraft:interaction,tag=cnk.mr_kettle_interaction,distance=..20] run function cnk:mr_kettle/hit/check
tag @s remove cnk.hit_mr_kettle