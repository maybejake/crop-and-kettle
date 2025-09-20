function cnk:recipes/distiller/motion

data remove storage cnk:temp distiller.slot
data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}].Slot
execute if data storage cnk:temp distiller.slot run function cnk:recipes/remove with storage cnk:temp distiller
execute if data storage cnk:temp distiller.slot run data modify storage cnk:temp distiller.byproduct.item set value {"id":"minecraft:glass_bottle"}
execute if data storage cnk:temp distiller.slot at @s run return run function cnk:recipes/distiller/generic/macro with storage cnk:temp distiller.byproduct


data remove storage cnk:temp distiller.slot
data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:water_bucket"}].Slot
execute if data storage cnk:temp distiller.slot run function cnk:recipes/remove with storage cnk:temp distiller
execute if data storage cnk:temp distiller.slot run data modify storage cnk:temp distiller.byproduct.item set value {"id":"minecraft:bucket"}
execute if data storage cnk:temp distiller.slot at @s run return run function cnk:recipes/distiller/generic/macro with storage cnk:temp distiller.byproduct