execute if entity @s[type=!minecraft:villager] run kill @s

# not necessary anymore, but prevents weirdness
item replace entity @s weapon.mainhand from entity @s armor.chest

# stops golems spawning, also serves to stop other memories from being created
data modify entity @s Brain.memories set value {"minecraft:golem_detected_recently":{value:true}}

execute if predicate cnk:moving run function cnk:fizz/moving

# fizz whistle
execute if entity @s[tag=cnk.fizz_whistled] run function cnk:fizz/despawn_timer

# ambient sound
execute if predicate {type:"minecraft:all_of",terms:[{type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:40}},{type:"minecraft:random_chance",chance:0.6}]} at @s run playsound minecraft:entity.frog.ambient neutral @a ~ ~ ~ 1 0.5

# ticks
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:20}} run function cnk:fizz/tick_20
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:200}} run function cnk:fizz/tick_200

execute store result score $hurt_time cnk.dummy run data get entity @s HurtTime
execute unless score $hurt_time cnk.dummy matches 0 run return run function cnk:fizz/damaged

item modify entity @s armor.head {"type":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","values":[false]}}

# blinking
scoreboard players set $chance cnk.dummy 0
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:5}} run function cnk:fizz/blink
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:10}} run return run item modify entity @s armor.head {"type":"minecraft:set_custom_model_data","flags":{"mode":"replace_all","values":[false, false, false]}}

# blink sound
execute if score $chance cnk.dummy matches 1..10 run playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 0.4 2