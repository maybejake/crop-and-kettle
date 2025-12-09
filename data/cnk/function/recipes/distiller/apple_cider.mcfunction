function cnk:recipes/distiller/generic/water

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cinnamon"}}}}}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

data modify storage cnk:temp distiller.slot set from storage cnk:temp distiller.Items[{id:"minecraft:apple"}].Slot
function cnk:recipes/remove with storage cnk:temp distiller

#output to basin
data modify storage cnk:temp distiller.color set value 12285475
data modify storage cnk:temp distiller.callback set value "cnk:drinks/apple_cider/main"
data modify storage cnk:temp distiller.liquid set value "apple_cider"

function cnk:distiller/crafting/finish_distilling