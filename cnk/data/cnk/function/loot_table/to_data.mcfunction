data remove storage cnk:temp loot_table.output

summon minecraft:item_display ~ ~1000 ~ {UUID:[I;1160221482,-129285996,-1857998330,-761415134]}
$loot replace entity 4527932a-f84b-4094-9141-3206d29dba22 contents loot $(loot_table)
data modify storage cnk:temp loot_table.output set from entity 4527932a-f84b-4094-9141-3206d29dba22 item
kill 4527932a-f84b-4094-9141-3206d29dba22