scoreboard players set $fruit_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"grapes"}}}}}] run scoreboard players add $fruit_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:apple"}] run scoreboard players add $fruit_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:sweet_berries"}] run scoreboard players add $fruit_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:melon_slice"}] run scoreboard players add $fruit_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:glow_berries"}] run scoreboard players add $fruit_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:chorus_fruit"}] run scoreboard players add $fruit_count cnk.dummy 1

return 1