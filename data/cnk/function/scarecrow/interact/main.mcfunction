advancement revoke @s only cnk:interact_scarecrow

scoreboard players set $interact_scarecrow_check cnk.dummy 0

tag @s add cnk.interact_scarecrow
execute as @e[type=minecraft:interaction,tag=cnk.scarecrow_interaction,distance=..20] at @s run function cnk:scarecrow/interact/check
tag @s remove cnk.interact_scarecrow