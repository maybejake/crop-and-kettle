advancement revoke @s only cnk:hit_plate

tag @s add cnk.hit_plate
execute as @n[type=minecraft:interaction,tag=cnk.plate_interaction,nbt={attack:{}},distance=..20] run function cnk:plate/hit/on_interaction
tag @s remove cnk.hit_plate