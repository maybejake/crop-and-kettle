advancement revoke @s only cnk:hit_scarecrow

tag @s add cnk.hit_scarecrow
execute as @n[type=minecraft:interaction,tag=cnk.scarecrow_interaction,nbt={attack:{}},distance=..20] run function cnk:scarecrow/hit/on_interaction
tag @s remove cnk.hit_scarecrow