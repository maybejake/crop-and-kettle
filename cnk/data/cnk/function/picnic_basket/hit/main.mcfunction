advancement revoke @s only cnk:hit_picnic_basket

tag @s add cnk.hit_picnic_basket
execute as @n[type=minecraft:interaction,tag=cnk.picnic_basket_interaction,nbt={attack:{}},distance=..20] run function cnk:picnic_basket/hit/on_interaction
tag @s remove cnk.hit_picnic_basket