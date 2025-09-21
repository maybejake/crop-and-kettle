data modify storage cnk:temp mixing_bowl.temp_item set from entity @s item
execute if data storage cnk:temp mixing_bowl.temp_item.components."minecraft:custom_data" run data modify storage cnk:temp mixing_bowl.temp_item.id set value "ignore"
data modify storage cnk:temp mixing_bowl.Items append from storage cnk:temp mixing_bowl.temp_item