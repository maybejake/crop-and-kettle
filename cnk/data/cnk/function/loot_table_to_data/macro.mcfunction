$loot replace entity @s contents loot $(loot_table)
data modify storage cnk:temp loot_table.data set from entity @s item
kill @s