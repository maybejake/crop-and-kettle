data remove storage cnk:temp loot_table.data

$data modify storage cnk:temp loot_table_to_data.loot_table set value "$(loot_table)"
function cnk:loot_table_to_data/macro with storage cnk:temp loot_table_to_data