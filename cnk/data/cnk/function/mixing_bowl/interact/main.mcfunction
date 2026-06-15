advancement revoke @s only cnk:interact_mixing_bowl

tag @s add cnk.interact_mixing_bowl
execute as @n[type=minecraft:interaction,tag=cnk.mixing_bowl_interaction,nbt={interaction:{}},distance=..20] run function cnk:mixing_bowl/interact/on_interaction
tag @s remove cnk.interact_mixing_bowl