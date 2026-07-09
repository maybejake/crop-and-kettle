# prevent overriding base trades
execute unless data entity @s Offers.Recipes run return fail

tag @s add cnk.butcher_villager

data modify storage cnk:temp secret_recipe.first_recipe set value ""
data modify storage cnk:temp secret_recipe.second_recipe set value ""
data modify storage cnk:temp loot_table.data set value ""

# guarantee one
function cnk:villager/recipe

# 70% chance per extra roll
data modify storage cnk:temp secret_recipe.first_recipe set from storage cnk:temp loot_table.data
function cnk:villager/chance

data modify storage cnk:temp secret_recipe.second_recipe set from storage cnk:temp loot_table.data
function cnk:villager/chance