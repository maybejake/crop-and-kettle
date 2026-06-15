advancement revoke @s only cnk:interact_candy_bowl

tag @s add cnk.interact_candy_bowl
execute as @n[type=minecraft:interaction,tag=cnk.candy_bowl_interaction,nbt={interaction:{}},distance=..20] run function cnk:candy_bowl/interact/on_interaction
tag @s remove cnk.interact_candy_bowl