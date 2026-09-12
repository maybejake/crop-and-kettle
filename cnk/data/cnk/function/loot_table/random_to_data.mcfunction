# a whackadoo function that picks a random entry from loot_table.entries and resolves it to data in loot_table.output
# can be used for both normal items and loot tables via "id" and "loot_table"
# "count" can be used to set the count of the items dropped

# cleanup old data
data remove storage cnk:temp loot_table.output

# pick an entry
function cnk:loot_table/random

# if no loot table, don't resolve
execute unless data storage cnk:temp loot_table.entry.loot_table run return run data modify storage cnk:temp loot_table.output set from storage cnk:temp loot_table.entry

# loot table, resolve and modify count
function cnk:loot_table/to_data with storage cnk:temp loot_table.entry
data modify storage cnk:temp loot_table.output.count set from storage cnk:temp loot_table.entry.count