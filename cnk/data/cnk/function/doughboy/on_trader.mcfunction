item replace entity @s weapon.mainhand from entity @s armor.chest

execute if predicate cnk:moving run function cnk:doughboy/moving

execute if entity @s[tag=cnk.doughboy_fed] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}},{condition:"minecraft:random_chance",chance:0.001}] run function cnk:doughboy/rise

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:200}} run function cnk:doughboy/tick_200

execute store result score $hurt_time cnk.dummy run data get entity @s HurtTime
execute unless score $hurt_time cnk.dummy matches 0 run return run function cnk:doughboy/damaged