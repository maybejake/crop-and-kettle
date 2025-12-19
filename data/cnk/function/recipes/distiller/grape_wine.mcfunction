function cnk:recipes/distiller/generic/water

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 9447274
data modify storage cnk:temp distiller.callback set value "cnk:drinks/grape_wine/main"
data modify storage cnk:temp distiller.liquid set value "grape_wine"

function cnk:distiller/crafting/finish_distilling