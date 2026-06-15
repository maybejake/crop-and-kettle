advancement revoke @s only cnk:interact_plate

tag @s add cnk.interact_plate
execute as @n[type=minecraft:interaction,tag=cnk.plate_interaction,nbt={interaction:{}},distance=..20] run function cnk:plate/interact/on_interaction
tag @s remove cnk.interact_plate