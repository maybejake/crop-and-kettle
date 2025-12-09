function cnk:recipes/distiller/generic/water

function cnk:recipes/distiller/generic/fruit

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:emerald_block"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:totem_of_undying"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 1564002
data modify storage cnk:temp distiller.callback set value "cnk:drinks/heroic_wine/main"
data modify storage cnk:temp distiller.liquid set value "heroic_wine"

function cnk:distiller/crafting/finish_distilling