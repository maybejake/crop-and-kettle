item replace entity @s weapon.mainhand with minecraft:air

data modify storage cnk:temp durability.item_model set from storage cnk:temp loot_table.output.components."minecraft:item_model"
function cnk:durability/break_particle with storage cnk:temp durability