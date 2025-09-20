data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"mutton_cutlets"}}}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:mutton"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot