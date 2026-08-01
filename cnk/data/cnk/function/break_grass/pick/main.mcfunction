execute store result score $max_index cnk.dummy run data get storage cnk:temp break_grass.loot_tables
execute store result storage cnk:temp break_grass.max_index int 1 run scoreboard players remove $max_index cnk.dummy 1

function cnk:break_grass/pick/random with storage cnk:temp break_grass
function cnk:break_grass/pick/get_item with storage cnk:temp break_grass