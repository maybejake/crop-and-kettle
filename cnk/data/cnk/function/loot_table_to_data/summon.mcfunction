$loot replace entity @s contents loot $(loot_table)
data modify storage cnk:temp loot_table.data set from entity @s item
kill @s
execute if data storage cnk:temp loot_table.data positioned ~ ~1000 ~ run return 1
return fail
