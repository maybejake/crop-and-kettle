advancement revoke @s only cnk:hit_basin

scoreboard players set $hit_basin_check cnk.dummy 0

tag @s add cnk.hit_basin
execute as @e[type=minecraft:interaction,tag=cnk.basin_interaction,distance=..20] run function cnk:basin/hit/check
tag @s remove cnk.hit_basin