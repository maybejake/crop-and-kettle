advancement revoke @s only cnk:hit_scarecrow

scoreboard players set $hit_scarecrow_check cnk.dummy 0

tag @s add cnk.hit_scarecrow
execute as @e[type=minecraft:interaction,tag=cnk.scarecrow_interaction,distance=..20] run function cnk:scarecrow/hit/check
tag @s remove cnk.hit_scarecrow