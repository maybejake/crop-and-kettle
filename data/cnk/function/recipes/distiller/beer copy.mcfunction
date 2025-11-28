function cnk:recipes/distiller/generic/water

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:wheat"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 16410129
data modify storage cnk:temp distiller.callback set value "cnk:drinks/beer/main"
data modify storage cnk:temp distiller.liquid set value "beer"

function cnk:distiller/crafting/finish_distilling