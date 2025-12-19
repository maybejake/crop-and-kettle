advancement revoke @s only cnk:hit_wreath

scoreboard players set $hit_wreath_check cnk.dummy 0

tag @s add cnk.hit_wreath
execute as @e[type=minecraft:interaction,tag=cnk.wreath_interaction,distance=..20] run function cnk:wreath/hit/check
tag @s remove cnk.hit_wreath