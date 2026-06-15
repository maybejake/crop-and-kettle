advancement revoke @s only cnk:hit_mr_kettle

tag @s add cnk.hit_mr_kettle
execute as @n[type=minecraft:interaction,tag=cnk.mr_kettle_interaction,nbt={attack:{}},distance=..20] run function cnk:mr_kettle/hit/on_interaction
tag @s remove cnk.hit_mr_kettle