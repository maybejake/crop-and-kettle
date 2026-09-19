execute if entity @s[type=!minecraft:villager] run return run kill @s

# not necessary anymore, but prevents weirdness
item replace entity @s weapon.mainhand from entity @s armor.chest

# stops golems spawning, also serves to stop other memories from being created
data modify entity @s Brain.memories set value {"minecraft:golem_detected_recently":{value:true}}

execute if predicate cnk:moving run function cnk:doughboy/moving

execute if entity @s[tag=cnk.doughboy_fed] if predicate {type:"minecraft:all_of",terms:[{type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}},{type:"minecraft:random_chance",chance:0.001}]} run function cnk:doughboy/rise

execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:200}} run function cnk:doughboy/tick_200

execute store result score $hurt_time cnk.dummy run data get entity @s HurtTime
execute unless score $hurt_time cnk.dummy matches 0 run return run function cnk:doughboy/damaged