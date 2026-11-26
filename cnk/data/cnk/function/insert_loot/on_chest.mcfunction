function cnk:insert_loot/get_slots

execute store result score $loops cnk.dummy run data get storage cnk:temp insert_loot.count
function cnk:insert_loot/loop

kill @s
