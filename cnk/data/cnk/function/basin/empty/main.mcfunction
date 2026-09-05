scoreboard players remove @s cnk.level 1
item modify entity @s contents cnk:basin/update_level

item modify entity @p[tag=cnk.interact_basin,distance=..20] weapon.mainhand {"type":"minecraft:set_count","count":-1,"add":true}

# store inventory state
data modify storage cnk:temp basin.give_or_spawn set value "give @s"
execute if entity @p[tag=cnk.interact_basin,distance=..20,predicate=cnk:inventory_full] run data modify storage cnk:temp basin.give_or_spawn set value "spawn ~ ~ ~"

# callback
function cnk:time/get
function cnk:basin/empty/macro with entity @s item.components."minecraft:custom_data".cnk.basin

execute as @p[tag=cnk.interact_basin,distance=..20] at @s run function cnk:basin/empty/on_chef