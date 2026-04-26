execute store result score $basket_count cnk.dummy run data get entity @s item.components."minecraft:custom_data".cnk.picnic_basket.count
execute store result score $max_items cnk.dummy run data get entity @s item.components."minecraft:custom_data".cnk.picnic_basket.max_items

execute if score $basket_count cnk.dummy < $max_items cnk.dummy if items entity @p[tag=cnk.interact_picnic_basket] weapon.* #cnk:food run return run function cnk:picnic_basket/insert/main
execute if score $basket_count cnk.dummy matches 1.. unless items entity @p[tag=cnk.interact_picnic_basket] weapon.* #cnk:food run return run function cnk:picnic_basket/remove/main

swing @p[tag=cnk.interact_picnic_basket] mainhand
execute store result score $state cnk.dummy run data get entity @s item.components."minecraft:custom_model_data".flags[0]
execute if score $state cnk.dummy matches 0 run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}
execute if score $state cnk.dummy matches 1 run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}