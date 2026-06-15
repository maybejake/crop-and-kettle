advancement revoke @s only cnk:hit_basin

tag @s add cnk.hit_basin
execute as @n[type=minecraft:interaction,tag=cnk.basin_interaction,nbt={attack:{}},distance=..20] run function cnk:basin/hit/on_interaction
tag @s remove cnk.hit_basin