advancement revoke @s only cnk:hit_gift

tag @s add cnk.hit_gift
execute as @n[type=minecraft:interaction,tag=cnk.gift_interaction,nbt={attack:{}},distance=..20] run function cnk:gift/hit/on_interaction
tag @s remove cnk.hit_gift