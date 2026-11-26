tag @s add cnk.loot_marker
data modify entity @s data.cnk.insert_loot.loot_table set from storage cnk:temp insert_loot.loot_table
data modify entity @s data.cnk.insert_loot.count set from storage cnk:temp insert_loot.count

schedule function cnk:insert_loot/find_chests 1t
