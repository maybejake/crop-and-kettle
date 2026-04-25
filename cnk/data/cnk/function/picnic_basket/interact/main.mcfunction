advancement revoke @s only cnk:interact_picnic_basket

scoreboard players set $interact_picnic_basket_check cnk.dummy 0

tag @s add cnk.interact_picnic_basket
execute as @e[type=minecraft:interaction,tag=cnk.picnic_basket_interaction,distance=..20] at @s run function cnk:picnic_basket/interact/check
tag @s remove cnk.interact_picnic_basket