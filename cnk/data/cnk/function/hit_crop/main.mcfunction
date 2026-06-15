advancement revoke @s only cnk:hit_crop

tag @s add cnk.hit_crop
execute as @n[type=minecraft:interaction,tag=cnk.crop_interaction,nbt={attack:{}},distance=..20] at @s run function cnk:hit_crop/on_interaction
tag @s remove cnk.hit_crop