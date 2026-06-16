advancement revoke @s only cnk:interact_wine_rack_left

tag @s add cnk.interact_wine_rack
execute as @n[type=minecraft:interaction,tag=cnk.wine_rack_interaction_left,nbt={interaction:{}},distance=..20] at @s run function cnk:wine_rack/interact/left/on_interaction
tag @s remove cnk.interact_wine_rack