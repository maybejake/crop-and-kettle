# similar to random_to_data but resolves item data to loot tables instead of resolving loot tables to item data

# cleanup old data
data remove storage cnk:temp loot_table.output

# pick an entry
function cnk:loot_table/random

# if loot table, exit without extra processing
execute if data storage cnk:temp loot_table.entry.loot_table run return run data modify storage cnk:temp loot_table.output set from storage cnk:temp loot_table.entry.loot_table

# id, convert to loot table and modify count
data modify storage cnk:temp loot_table.output set value {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"",modifier:[{type:"minecraft:set_count",count:1}]}]}]}
data modify storage cnk:temp loot_table.output.pools[0].entries[0].name set from storage cnk:temp loot_table.entry.id
data modify storage cnk:temp loot_table.output.pools[0].entries[0].modifier[0].count set from storage cnk:temp loot_table.entry.count