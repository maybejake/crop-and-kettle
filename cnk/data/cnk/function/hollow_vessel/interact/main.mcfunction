advancement revoke @s only cnk:interact_hollow_vessel

tag @s add cnk.interact_hollow_vessel
execute as @n[type=minecraft:interaction,tag=cnk.hollow_vessel_interaction,nbt={interaction:{}},distance=..20] run function cnk:hollow_vessel/interact/on_interaction
tag @s remove cnk.interact_hollow_vessel