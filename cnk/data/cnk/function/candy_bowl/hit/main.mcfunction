advancement revoke @s only cnk:hit_candy_bowl

tag @s add cnk.hit_candy_bowl
execute as @n[type=minecraft:interaction,tag=cnk.candy_bowl_interaction,nbt={attack:{}},distance=..20] run function cnk:candy_bowl/hit/on_interaction
tag @s remove cnk.hit_candy_bowl