scoreboard players set $water_count cnk.dummy 0

execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:water_bucket"}] run scoreboard players add $water_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run scoreboard players add $water_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{pail:{liquid:"water"}}}}}] run scoreboard players add $water_count cnk.dummy 1

return 1