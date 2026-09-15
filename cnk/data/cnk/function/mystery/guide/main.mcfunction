advancement revoke @s only cnk:meat_guide

function cnk:loot_table/to_data {loot_table:"cnk:other/shrine_map"}
data modify storage cnk:temp meat_guide set from storage cnk:temp loot_table.output.components."minecraft:map_decorations".+
function cnk:mystery/guide/replace with storage cnk:temp meat_guide