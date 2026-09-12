# remove old entry
data remove storage cnk:temp loot_table.entry

# pick an index
execute store result storage cnk:temp loot_table.count int 1 run data get storage cnk:temp loot_table.entries
data modify storage cnk:temp loot_table.index set compute default integer cnk:loot_index

# get the item
function cnk:loot_table/random/get_entry with storage cnk:temp loot_table

# cleanup
data remove storage cnk:temp loot_table.entries