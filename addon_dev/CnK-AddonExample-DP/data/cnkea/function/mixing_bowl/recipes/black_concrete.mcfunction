# this function is called once mixing is complete! slightly more complicated than the other though
loot spawn ~ ~-0.3 ~ loot cnkea:other/black_concrete

# sometimes recipes need to produce byproducts, cooking_pot helper functions handle this already but with the mixing bowl its a little different
# get the items that were in the mixing bowl
function cnk:mixing_bowl/mix/get_items

# check if item exists, if it was then spawn the correct byproduct
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run loot spawn ~ ~-0.3 ~ loot cnk:other/glass_bottle
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:water_bucket"}] run loot spawn ~ ~-0.3 ~ loot cnk:other/bucket

# this function MUST be called, it locks the mixing bowl and starts the mixing process
function cnk:mixing_bowl/mix/clean_up