scoreboard players remove @s cnk.level 1
item modify entity @s contents cnk:update_basin_level

item modify entity @p[tag=cnk.interact_basin,distance=..20] weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}

# store inventory state
data modify storage cnk:temp time.give_or_spawn set value "give @s"
execute if entity @p[tag=cnk.interact_basin,distance=..20,predicate=cnk:inventory_full] run data modify storage cnk:temp time.give_or_spawn set value "spawn ~ ~ ~"

data modify storage cnk:temp time.color set from entity @s item.components."minecraft:custom_model_data".colors[0]
function cnk:basin/empty/macro with entity @s item.components."minecraft:custom_data".cnk.basin

execute unless score @s cnk.level matches 1.. run data modify entity @s item.components."minecraft:custom_model_data".colors set value []
execute unless score @s cnk.level matches 1.. run data modify entity @s item.components."minecraft:custom_data".cnk.basin.callback set value ""
execute unless score @s cnk.level matches 1.. run data modify entity @s item.components."minecraft:custom_data".cnk.basin.liquid set value ""

execute as @p[tag=cnk.interact_basin,distance=..20] at @s run function cnk:basin/empty/on_chef