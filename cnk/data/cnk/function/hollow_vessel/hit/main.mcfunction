advancement revoke @s only cnk:hit_hollow_vessel

tag @s add cnk.hit_hollow_vessel
execute as @n[type=minecraft:interaction,tag=cnk.hollow_vessel_interaction,nbt={attack:{}},distance=..20] run function cnk:hollow_vessel/hit/on_interaction
tag @s remove cnk.hit_hollow_vessel