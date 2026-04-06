data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:ominous_bottle"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 9447257
data modify storage cnk:temp distiller.callback set value "cnk:drinks/booze_wine/main"
data modify storage cnk:temp distiller.liquid set value "booze_wine"

function cnk:distiller/crafting/finish_distilling