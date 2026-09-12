# a whackadoo function that picks a random entry from loot_table.entries and resolves it to data in loot_table.data
# can be used for both normal items and loot tables via "id" and "loot_table"
# "count" can be used to set the count of the items dropped

# pick an index
data modify storage cnk:temp loot_table.index set compute default integer cnk:loot_index

# get the item
function cnk:loot_table/random/get_item with storage cnk:temp loot_table

# cleanup
data remove storage cnk:temp loot_table.entries

# if no loot table, exit without extra processing
execute unless data storage cnk:temp loot_table.entry.loot_table run return 1

# loot table, resolve and modify count
function cnk:loot_table/to_data with storage cnk:temp loot_table.entry
data modify storage cnk:temp loot_table.data.count set from storage cnk:temp loot_table.entry.count