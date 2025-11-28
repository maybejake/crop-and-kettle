setblock ~ ~ ~ minecraft:air replace

playsound block.copper.break block @a ~ ~ ~ 1 0.7
particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"minecraft:copper_block"}}} ~ ~0.6 ~ 0.3 0.5 0.3 0.1 40

data remove storage cnk:temp pail
data modify storage cnk:temp pail.liquid set from entity @s item.components."minecraft:custom_data".cnk.pail.liquid
data modify storage cnk:temp pail.color set from entity @s item.components."minecraft:custom_model_data".colors[0]
data modify storage cnk:temp pail.quantity set from entity @s item.components."minecraft:custom_model_data".floats[0]
execute store result storage cnk:temp pail.max_quantity int 1 run scoreboard players get @s cnk.max_quantity

execute unless data storage cnk:temp pail.liquid run loot spawn ~ ~ ~ loot cnk:tools/pail
execute if data storage cnk:temp pail{liquid:"water"} run function cnk:pail/break/water with storage cnk:temp pail
execute if data storage cnk:temp pail{liquid:"milk"} run function cnk:pail/break/milk with storage cnk:temp pail

execute on passengers run kill @s
kill @s