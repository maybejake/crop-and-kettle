$loot spawn ~ ~1000 ~ loot $(loot_table)
data remove storage cnk:temp loot_table.data
execute positioned ~ ~1000 ~ run data modify storage cnk:temp loot_table.data set from entity @e[type=minecraft:item,dx=0,limit=1] Item
execute if data storage cnk:temp loot_table.data positioned ~ ~1000 ~ run return run kill @e[type=minecraft:item,dx=0,limit=1]
return fail
