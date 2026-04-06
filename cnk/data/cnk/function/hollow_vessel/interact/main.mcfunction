advancement revoke @s only cnk:interact_hollow_vessel

scoreboard players set $interact_hollow_vessel_check cnk.dummy 0

tag @s add cnk.interact_hollow_vessel
execute as @e[type=minecraft:interaction,tag=cnk.hollow_vessel_interaction,distance=..20] run function cnk:hollow_vessel/interact/check
tag @s remove cnk.interact_hollow_vessel