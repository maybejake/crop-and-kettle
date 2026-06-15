advancement revoke @s only cnk:interact_basin

tag @s add cnk.interact_basin
execute as @n[type=minecraft:interaction,tag=cnk.basin_interaction,nbt={interaction:{}},distance=..20] run function cnk:basin/interact/on_interaction
tag @s remove cnk.interact_basin