function cnk:recipes/distiller/generic/water

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:golden_apple"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 15518533
data modify storage cnk:temp distiller.callback set value "cnk:drinks/gleaming_wine/main"
data modify storage cnk:temp distiller.liquid set value "gleaming_wine"

function cnk:distiller/crafting/finish_distilling