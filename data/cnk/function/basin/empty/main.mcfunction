scoreboard players remove @s cnk.level 1

execute if score @s cnk.level matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cnk:basin"
execute if score @s cnk.level matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:basin_1"
execute if score @s cnk.level matches 2 run data modify entity @s item.components."minecraft:item_model" set value "cnk:basin_2"
execute if score @s cnk.level matches 3 run data modify entity @s item.components."minecraft:item_model" set value "cnk:basin_3"

item modify entity @p[tag=cnk.interact_basin] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}

# store inventory state
data modify storage cnk:temp time.give_or_spawn set value "give @s"
execute if entity @p[tag=cnk.interact_basin,predicate=cnk:inventory_full] run data modify storage cnk:temp time.give_or_spawn set value "spawn ~ ~ ~"

data modify storage cnk:temp time.color set from entity @s item.components."minecraft:custom_model_data".colors[0]
function cnk:basin/empty/macro with entity @s item.components."minecraft:custom_data".cnk.basin

execute if score @s cnk.level matches 0 run data modify entity @s item.components."minecraft:custom_model_data".colors set value []
execute if score @s cnk.level matches 0 run data modify entity @s item.components."minecraft:custom_data".cnk.basin.callback set value ""
execute if score @s cnk.level matches 0 run data modify entity @s item.components."minecraft:custom_data".cnk.basin.liquid set value ""

execute as @p[tag=cnk.interact_basin] at @s run playsound minecraft:item.bottle.fill block @a ~ ~ ~ 1 1