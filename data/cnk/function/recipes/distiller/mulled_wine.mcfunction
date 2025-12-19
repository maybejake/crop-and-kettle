function cnk:recipes/distiller/generic/water

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cinnamon"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:sweet_berries"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

function cnk:recipes/distiller/generic/honey

#output to basin
data modify storage cnk:temp distiller.color set value 6888493
data modify storage cnk:temp distiller.callback set value "cnk:drinks/mulled_wine/main"
data modify storage cnk:temp distiller.liquid set value "mulled_wine"

function cnk:distiller/crafting/finish_distilling