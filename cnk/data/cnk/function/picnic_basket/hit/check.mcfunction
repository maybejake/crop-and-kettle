execute if score $hit_picnic_basket_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_picnic_basket] run scoreboard players set $hit_picnic_basket_check cnk.dummy 1
execute if score $hit_picnic_basket_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_picnic_basket_check cnk.dummy matches 1 on vehicle run function cnk:picnic_basket/hit/on_vehicle