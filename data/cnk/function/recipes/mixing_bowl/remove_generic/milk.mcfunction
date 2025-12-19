function cnk:mixing_bowl/mix/get_items
execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"milk_bottle"}}}}}] run loot spawn ~ ~-0.3 ~ loot cnk:other/glass_bottle
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:milk_bucket"}] run loot spawn ~ ~-0.3 ~ loot cnk:other/bucket
execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{pail:{liquid:"milk"}}}}}] run function cnk:recipes/mixing_bowl/remove_generic/pail