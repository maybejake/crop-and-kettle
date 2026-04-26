swing @p[tag=cnk.interact_picnic_basket] mainhand
execute store result score $state cnk.dummy run data get entity @s item.components."minecraft:custom_model_data".flags[0]
execute if score $state cnk.dummy matches 0 run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}
execute if score $state cnk.dummy matches 1 run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}