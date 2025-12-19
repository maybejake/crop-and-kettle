data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot
execute if data storage cnk:temp cooking_pot.slot run loot spawn ~ ~0.25 ~ loot cnk:other/glass_bottle

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:water_bucket"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot
execute if data storage cnk:temp cooking_pot.slot run loot spawn ~ ~0.25 ~ loot cnk:other/bucket

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{pail:{liquid:"water"}}}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove_pail with storage cnk:temp cooking_pot