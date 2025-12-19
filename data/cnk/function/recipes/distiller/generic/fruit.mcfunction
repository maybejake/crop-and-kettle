data remove storage cnk:temp distiller.slot
data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}].Slot
execute if data storage cnk:temp distiller.slot run function cnk:recipes/remove with storage cnk:temp distiller

data remove storage cnk:temp distiller.slot
data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:apple"}].Slot
execute if data storage cnk:temp distiller.slot run function cnk:recipes/remove with storage cnk:temp distiller

data remove storage cnk:temp distiller.slot
data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:sweet_berries"}].Slot
execute if data storage cnk:temp distiller.slot run function cnk:recipes/remove with storage cnk:temp distiller

data remove storage cnk:temp distiller.slot
data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:melon_slice"}].Slot
execute if data storage cnk:temp distiller.slot run function cnk:recipes/remove with storage cnk:temp distiller

data remove storage cnk:temp distiller.slot
data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:glow_berries"}].Slot
execute if data storage cnk:temp distiller.slot run function cnk:recipes/remove with storage cnk:temp distiller

data remove storage cnk:temp distiller.slot
data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:chorus_fruit"}].Slot
execute if data storage cnk:temp distiller.slot run function cnk:recipes/remove with storage cnk:temp distiller