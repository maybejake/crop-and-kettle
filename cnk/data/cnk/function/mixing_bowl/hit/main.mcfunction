advancement revoke @s only cnk:hit_mixing_bowl

tag @s add cnk.hit_mixing_bowl
execute as @n[type=minecraft:interaction,tag=cnk.mixing_bowl_interaction,nbt={attack:{}},distance=..20] run function cnk:mixing_bowl/hit/on_interaction
tag @s remove cnk.hit_mixing_bowl