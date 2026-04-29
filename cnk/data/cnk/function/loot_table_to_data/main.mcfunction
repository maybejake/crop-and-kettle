data remove storage cnk:temp loot_table.data

$data modify storage cnk:temp loot_table_to_data.loot_table set value "$(loot_table)"
execute positioned ~ ~1000 ~ summon minecraft:item_display run function cnk:loot_table_to_data/summon with storage cnk:temp loot_table_to_data