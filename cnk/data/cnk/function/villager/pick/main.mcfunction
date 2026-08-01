execute store result score $max_index cnk.dummy run data get storage cnk:temp secret_recipe.loot_tables
execute store result storage cnk:temp secret_recipe.max_index int 1 run scoreboard players remove $max_index cnk.dummy 1

function cnk:villager/pick/random with storage cnk:temp secret_recipe
function cnk:villager/pick/get_item with storage cnk:temp secret_recipe