tag @s add cnk.interact_crop
execute as @n[type=minecraft:interaction,tag=cnk.crop_interaction,nbt={interaction:{}},distance=..20] at @s run function cnk:interact_crop/on_interaction
tag @s remove cnk.interact_crop