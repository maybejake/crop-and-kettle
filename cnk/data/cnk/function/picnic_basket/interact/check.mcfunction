execute if score $interact_picnic_basket_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_picnic_basket] run scoreboard players set $interact_picnic_basket_check cnk.dummy 1
execute if score $interact_picnic_basket_check cnk.dummy matches 1 run function cnk:picnic_basket/interact/found