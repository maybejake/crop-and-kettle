tag @s add cnk.butcher_villager

data modify storage cnk:temp secret_recipe.first_recipe set value ""
data modify storage cnk:temp secret_recipe.second_recipe set value ""
data modify storage cnk:temp loot_table.data set value ""

# try 3 times
function cnk:villager/chance

data modify storage cnk:temp secret_recipe.first_recipe set from storage cnk:temp loot_table.data
function cnk:villager/chance

data modify storage cnk:temp secret_recipe.second_recipe set from storage cnk:temp loot_table.data
function cnk:villager/chance