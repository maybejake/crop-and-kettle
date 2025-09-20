data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"pork_cutlets"}}}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"beef_cutlets"}}}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chicken_cutlets"}}}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"mutton_cutlets"}}}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rabbit_portion"}}}}}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:porkchop"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:beef"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:chicken"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:mutton"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:rabbit"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot