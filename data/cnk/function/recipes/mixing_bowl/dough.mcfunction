loot spawn ~ ~-0.3 ~ loot cnk:food/dough

function cnk:mixing_bowl/mix/get_items
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run loot spawn ~ ~-0.3 ~ loot cnk:other/glass_bottle
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:water_bucket"}] run loot spawn ~ ~-0.3 ~ loot cnk:other/bucket

function cnk:mixing_bowl/mix/clean_up