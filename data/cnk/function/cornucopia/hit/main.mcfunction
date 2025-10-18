advancement revoke @s only cnk:hit_cornucopia

scoreboard players set $hit_cornucopia_check cnk.dummy 0

tag @s add cnk.hit_cornucopia
execute as @e[type=minecraft:interaction,tag=cnk.cornucopia_interaction,distance=..20] run function cnk:cornucopia/hit/check
tag @s remove cnk.hit_cornucopia