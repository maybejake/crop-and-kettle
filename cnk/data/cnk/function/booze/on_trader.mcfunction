item replace entity @s weapon.mainhand from entity @s armor.chest

particle minecraft:effect{color:9447257} ~ ~1.3 ~ 0.4 0.5 0.4 0.1 2 force

data modify storage cnk:temp booze.rotation set from entity @s Rotation[0]
execute on passengers if entity @s[tag=cnk.booze_bottle] rotated as @s run function cnk:booze/spin

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:10}} run function cnk:booze/tick_10
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:200}} run function cnk:booze/tick_200

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:25}} at @s anchored eyes run function cnk:booze/attack/main
execute if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:40}},{condition:"minecraft:random_chance",chance:0.6}] at @s run playsound cnk:entity.booze.idle hostile @a ~ ~ ~ 1 1
execute if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:30}},{condition:"minecraft:random_chance",chance:0.5}] at @s run playsound cnk:entity.booze.bubble hostile @a ~ ~ ~ 1 1

execute store result score $hurt_time cnk.dummy run data get entity @s HurtTime
execute unless score $hurt_time cnk.dummy matches 0 run return run function cnk:booze/damaged

item modify entity @s armor.head {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","values":[false]}}
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.booze_bottle] run item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}
