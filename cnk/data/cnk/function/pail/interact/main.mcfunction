advancement revoke @s only cnk:interact_pail

scoreboard players set $interact_pail_check cnk.dummy 0

tag @s add cnk.interact_pail
execute as @e[type=minecraft:interaction,tag=cnk.pail_interaction,distance=..20] run function cnk:pail/interact/check
tag @s remove cnk.interact_pail