advancement revoke @s only cnk:interact_wine_rack_right

tag @s add cnk.interact_wine_rack
execute as @n[type=minecraft:interaction,tag=cnk.wine_rack_interaction_right,nbt={interaction:{}},distance=..20] at @s run function cnk:wine_rack/interact/right/on_interaction
tag @s remove cnk.interact_wine_rack