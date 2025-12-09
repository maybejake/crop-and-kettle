function cnk:recipes/distiller/generic/water

function cnk:recipes/distiller/generic/fruit

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:gunpowder"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 7358282
data modify storage cnk:temp distiller.callback set value "cnk:drinks/creeping_wine/main"
data modify storage cnk:temp distiller.liquid set value "creeping_wine"

function cnk:distiller/crafting/finish_distilling