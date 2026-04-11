item replace entity @s weapon.mainhand from entity @s armor.chest
data modify entity @s DeathTime set value 19s

item modify entity @s[predicate=cnk:moving] weapon.mainhand {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","offset":1,"values":[true]}}

# ambient sound
execute if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:40}},{condition:"minecraft:random_chance",chance:0.6}] at @s run playsound minecraft:entity.frog.ambient neutral @a ~ ~ ~ 1 0.5

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:10}} at @s anchored eyes run function cnk:fizz/ai/main

data remove entity @s Offers.Recipes

execute store result score $hurt_time cnk.dummy run data get entity @s HurtTime
execute unless score $hurt_time cnk.dummy matches 0 run return run function cnk:fizz/damaged

item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","values":[false]}}

# blinking
scoreboard players set $chance cnk.dummy 0
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:5}} run function cnk:fizz/blink
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:10}} run return run item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":1,"values":[false, false]}}

# blink sound
execute if score $chance cnk.dummy matches 1..10 run playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 0.4 2