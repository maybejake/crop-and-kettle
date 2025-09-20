function cnk:recipes/distiller/generic/water

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:glow_berries"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 15832645
data modify storage cnk:temp distiller.callback set value "cnk:drinks/glow_berry_wine/main"
data modify storage cnk:temp distiller.liquid set value "glow_berry_wine"

function cnk:distiller/crafting/finish_distilling