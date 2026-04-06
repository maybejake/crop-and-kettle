advancement revoke @s only cnk:hit_hollow_vessel

scoreboard players set $hit_hollow_vessel_check cnk.dummy 0

tag @s add cnk.hit_hollow_vessel
execute as @e[type=minecraft:interaction,tag=cnk.hollow_vessel_interaction,distance=..20] run function cnk:hollow_vessel/hit/check
tag @s remove cnk.hit_hollow_vessel