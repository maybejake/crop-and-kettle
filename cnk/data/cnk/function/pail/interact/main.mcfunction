advancement revoke @s only cnk:interact_pail

tag @s add cnk.interact_pail
execute as @n[type=minecraft:interaction,tag=cnk.pail_interaction,nbt={interaction:{}},distance=..20] run function cnk:pail/interact/on_interaction
tag @s remove cnk.interact_pail