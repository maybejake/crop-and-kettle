advancement revoke @s only cnk:interact_basin

scoreboard players set $interact_basin_check cnk.dummy 0

tag @s add cnk.interact_basin
execute as @e[type=minecraft:interaction,tag=cnk.basin_interaction,distance=..20] run function cnk:basin/interact/check
tag @s remove cnk.interact_basin