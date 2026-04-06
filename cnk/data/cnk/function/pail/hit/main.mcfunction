advancement revoke @s only cnk:hit_pail

scoreboard players set $hit_pail_check cnk.dummy 0

tag @s add cnk.hit_pail
execute as @e[type=minecraft:interaction,tag=cnk.pail_interaction,distance=..20] run function cnk:pail/hit/check
tag @s remove cnk.hit_pail