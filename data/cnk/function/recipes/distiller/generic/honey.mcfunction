function cnk:recipes/distiller/motion

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:honey_bottle"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller
data modify storage cnk:temp distiller.byproduct.item set value "cnk:other/glass_bottle"
execute at @s run return run function cnk:recipes/distiller/generic/macro with storage cnk:temp distiller.byproduct