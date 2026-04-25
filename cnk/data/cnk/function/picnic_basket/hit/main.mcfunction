advancement revoke @s only cnk:hit_picnic_basket

scoreboard players set $hit_picnic_basket_check cnk.dummy 0

tag @s add cnk.hit_picnic_basket
execute as @e[type=minecraft:interaction,tag=cnk.picnic_basket_interaction,distance=..20] run function cnk:picnic_basket/hit/check
tag @s remove cnk.hit_picnic_basket