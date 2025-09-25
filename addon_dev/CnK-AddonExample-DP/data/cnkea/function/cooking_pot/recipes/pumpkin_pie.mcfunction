# this function is called once a recipe has been completed! handles the removal of items from the cooking pot and the spawning of the final item

# removal of ingredients must be done using those 2 lines due to the possibility of having multiple slots filled with the same ingredient
# "set from storage" resolves the issue where the check would return multiple NBT values and cause an error

# remove the ingredient
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:pumpkin"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

# remove the ingredient
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:sugar"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

# like with the crafting functions, helper functions exist for items that have variants, cnk comes with a few of these by default, which you can make use of!
function cnk:recipes/remove_generic/egg

# if your recipe needs to spawn byproducts, do that in here. the cooking pot helper functions handle the most common occurences though:
# - milk bottles or milk buckets spawning glass bottles or buckets
# - water bottles or water buckets spawning glass bottles or buckets

# if a byproduct is conditional based on a specific variant of an item, just check for the item and spawn it accordingly, ie:
# execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:pumpkin"}]... etc etc etc...

# spawn the result
loot spawn ~ ~0.25 ~ loot cnkea:food/pumpkin_pie

# MUST be called, handles animations/sounds and reset of data
function cnk:cooking_pot/effects/finish_cooking