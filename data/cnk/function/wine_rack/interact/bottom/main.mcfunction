advancement revoke @s only cnk:interact_wine_rack_bottom

scoreboard players set $interact_wine_rack_check cnk.dummy 0

tag @s add cnk.interact_wine_rack
execute as @e[type=minecraft:interaction,tag=cnk.wine_rack_interaction,distance=..20] at @s run function cnk:wine_rack/interact/bottom/check
tag @s remove cnk.interact_wine_rack