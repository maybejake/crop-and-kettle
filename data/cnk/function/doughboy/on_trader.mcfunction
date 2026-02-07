item replace entity @s weapon.mainhand from entity @s armor.chest
data modify entity @s DeathTime set value 19s

item modify entity @s[predicate=cnk:moving] weapon.mainhand {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","offset":1,"values":[true]}}

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:10}} at @s anchored eyes run function cnk:doughboy/ai/main

execute if entity @s[tag=cnk.doughboy_fed] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}},{condition:"minecraft:random_chance",chance:0.001}] run function cnk:doughboy/rise

execute store result score $hurt_time cnk.dummy run data get entity @s HurtTime
execute unless score $hurt_time cnk.dummy matches 0 run return run function cnk:doughboy/damaged

data remove entity @s Offers.Recipes