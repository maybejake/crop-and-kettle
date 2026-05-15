execute store result score $max_index cnk.dummy run data get storage cnk:temp secret_recipe.loot_tables
scoreboard players remove $max_index cnk.dummy 1
execute store result storage cnk:temp secret_recipe.max_index int 1 run scoreboard players get $max_index cnk.dummy

function cnk:villager/pick/random with storage cnk:temp secret_recipe
function cnk:villager/pick/get_item with storage cnk:temp secret_recipe