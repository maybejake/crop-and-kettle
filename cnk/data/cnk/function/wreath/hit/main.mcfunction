advancement revoke @s only cnk:hit_wreath

tag @s add cnk.hit_wreath
execute as @n[type=minecraft:interaction,tag=cnk.wreath_interaction,nbt={attack:{}},distance=..20] run function cnk:wreath/hit/on_interaction
tag @s remove cnk.hit_wreath