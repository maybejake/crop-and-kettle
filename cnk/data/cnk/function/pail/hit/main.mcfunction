advancement revoke @s only cnk:hit_pail

tag @s add cnk.hit_pail
execute as @n[type=minecraft:interaction,tag=cnk.pail_interaction,nbt={attack:{}},distance=..20] run function cnk:pail/hit/on_interaction
tag @s remove cnk.hit_pail