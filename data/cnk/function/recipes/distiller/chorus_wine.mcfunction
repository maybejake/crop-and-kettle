function cnk:recipes/distiller/generic/water

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:chorus_fruit"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 9131667
data modify storage cnk:temp distiller.callback set value "cnk:drinks/chorus_wine/main"
data modify storage cnk:temp distiller.liquid set value "chorus_wine"

function cnk:distiller/crafting/finish_distilling