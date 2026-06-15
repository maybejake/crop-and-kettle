advancement revoke @s only cnk:hit_cornucopia

tag @s add cnk.hit_cornucopia
execute as @n[type=minecraft:interaction,tag=cnk.cornucopia_interaction,nbt={attack:{}},distance=..20] run function cnk:cornucopia/hit/on_interaction
tag @s remove cnk.hit_cornucopia