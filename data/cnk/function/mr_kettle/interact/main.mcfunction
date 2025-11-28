advancement revoke @s only cnk:interact_mr_kettle

scoreboard players set $interact_mr_kettle_check cnk.dummy 0

tag @s add cnk.interact_mr_kettle
execute as @e[type=minecraft:interaction,tag=cnk.mr_kettle_interaction,distance=..20] run function cnk:mr_kettle/interact/check
tag @s remove cnk.interact_mr_kettle