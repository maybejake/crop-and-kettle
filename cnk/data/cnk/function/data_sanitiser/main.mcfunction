# fukkit
execute if data storage cnk:temp data[{components:{"minecraft:custom_data":{PublicBukkitValues:{}}}}] run data remove storage cnk:temp data[{components:{"minecraft:custom_data":{PublicBukkitValues:{}}}}].components."minecraft:custom_data"

# remove id of items with custom data
data remove storage cnk:temp data[{components:{"minecraft:custom_data":{}}}].id

# sourdough as bread
execute if data storage cnk:temp data[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"sourdough_bread"}}}}}] run data modify storage cnk:temp data[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"sourdough_bread"}}}}}].id set value "minecraft:bread"

# swordfish as fish
execute if data storage cnk:temp data[{components:{"minecraft:custom_data":{"myriad":{"id":"swordfish"}}}}] run data modify storage cnk:temp data[{components:{"minecraft:custom_data":{"myriad":{"id":"swordfish"}}}}].id set value "minecraft:cod"

# faaaaaathoms
execute if data storage cnk:temp data[{components:{"minecraft:custom_data":{fathoms:{id:"cod"}}}}] run data modify storage cnk:temp data[{components:{"minecraft:custom_data":{fathoms:{id:"cod"}}}}].id set value "minecraft:cod"
execute if data storage cnk:temp data[{components:{"minecraft:custom_data":{fathoms:{id:"salmon"}}}}] run data modify storage cnk:temp data[{components:{"minecraft:custom_data":{fathoms:{id:"salmon"}}}}].id set value "minecraft:salmon"
execute if data storage cnk:temp data[{components:{"minecraft:custom_data":{fathoms:{id:"pufferfish"}}}}] run data modify storage cnk:temp data[{components:{"minecraft:custom_data":{fathoms:{id:"pufferfish"}}}}].id set value "minecraft:pufferfish"