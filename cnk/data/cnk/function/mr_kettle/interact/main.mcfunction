advancement revoke @s only cnk:interact_mr_kettle

tag @s add cnk.interact_mr_kettle
execute as @n[type=minecraft:interaction,tag=cnk.mr_kettle_interaction,nbt={interaction:{}},distance=..20] run function cnk:mr_kettle/interact/on_interaction
tag @s remove cnk.interact_mr_kettle