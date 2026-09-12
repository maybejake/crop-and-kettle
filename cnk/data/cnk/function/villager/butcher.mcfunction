# prevent overriding base trades
execute unless data entity @s Offers.Recipes run return fail

tag @s add cnk.butcher_villager

data modify storage cnk:temp secret_recipe set value {first_recipe:"", second_recipe:""}

# guarantee one
function cnk:villager/recipe

# 70% chance per extra roll
data modify storage cnk:temp secret_recipe.first_recipe set from storage cnk:temp secret_recipe.loot_table
function cnk:villager/chance

data modify storage cnk:temp secret_recipe.second_recipe set from storage cnk:temp secret_recipe.loot_table
function cnk:villager/chance