$loot replace entity @s contents loot $(loot_table)
data modify storage cnk:temp loot_table.data set from entity @s item
execute if data storage cnk:temp loot_table.data positioned ~ ~1000 ~ run return run kill @s
return fail
