data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:milk_bucket"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot
execute if data storage cnk:temp cooking_pot.slot run loot spawn ~ ~0.25 ~ loot cnk:other/bucket

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"milk_bottle"}}}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot
execute if data storage cnk:temp cooking_pot.slot run loot spawn ~ ~0.25 ~ loot cnk:other/glass_bottle