scoreboard players set $vegetable_count cnk.dummy 0

execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"tomato"}}}}}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"corn"}}}}}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"lettuce"}}}}}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chili_pepper"}}}}}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:beetroot"}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:carrot"}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:potato"}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:dried_kelp"}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:red_mushroom"}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:brown_mushroom"}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:pumpkin"}] run scoreboard players add $vegetable_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:sea_pickle"}] run scoreboard players add $vegetable_count cnk.dummy 1

return 1