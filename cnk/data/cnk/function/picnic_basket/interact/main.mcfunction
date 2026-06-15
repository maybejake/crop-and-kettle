advancement revoke @s only cnk:interact_picnic_basket

tag @s add cnk.interact_picnic_basket
execute as @n[type=minecraft:interaction,tag=cnk.picnic_basket_interaction,nbt={interaction:{}},distance=..20] at @s run function cnk:picnic_basket/interact/on_interaction
tag @s remove cnk.interact_picnic_basket