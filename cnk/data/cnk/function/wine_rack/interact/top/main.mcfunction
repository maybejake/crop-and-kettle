advancement revoke @s only cnk:interact_wine_rack_top

tag @s add cnk.interact_wine_rack
execute as @n[type=minecraft:interaction,tag=cnk.wine_rack_interaction_top,nbt={interaction:{}},distance=..20] at @s run function cnk:wine_rack/interact/top/on_interaction
tag @s remove cnk.interact_wine_rack