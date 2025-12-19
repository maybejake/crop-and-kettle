$execute store result score $pail_quantity cnk.dummy run data get storage cnk:temp distiller.Items[{Slot:$(slot)b}].components."minecraft:custom_data".cnk.pail.quantity
scoreboard players remove $pail_quantity cnk.dummy 1

execute if score $pail_quantity cnk.dummy matches 0 run function cnk:recipes/remove with storage cnk:temp distiller
execute if score $pail_quantity cnk.dummy matches 0 run data modify storage cnk:temp distiller.byproduct.item set value "cnk:tools/pail"
execute if score $pail_quantity cnk.dummy matches 0 run return run function cnk:recipes/distiller/generic/macro with storage cnk:temp distiller.byproduct

execute store result storage cnk:temp distiller.pail_quantity int 1 run scoreboard players get $pail_quantity cnk.dummy
function cnk:recipes/pail_macro with storage cnk:temp distiller