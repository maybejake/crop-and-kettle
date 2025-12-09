function cnk:recipes/distiller/generic/water

function cnk:recipes/distiller/generic/fruit

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:amethyst_shard"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:golden_carrot"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 9267916
data modify storage cnk:temp distiller.callback set value "cnk:drinks/prospecting_wine/main"
data modify storage cnk:temp distiller.liquid set value "prospecting_wine"

function cnk:distiller/crafting/finish_distilling