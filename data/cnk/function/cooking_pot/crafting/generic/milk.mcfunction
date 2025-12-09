scoreboard players set $milk_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"milk_bottle"}}}}}] run scoreboard players add $milk_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:milk_bucket"}] run scoreboard players add $milk_count cnk.dummy 1

return 1