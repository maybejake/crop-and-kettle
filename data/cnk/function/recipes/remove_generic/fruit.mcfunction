data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:apple"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sweet_berries"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:melon_slice"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:glow_berries"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:chorus_fruit"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot