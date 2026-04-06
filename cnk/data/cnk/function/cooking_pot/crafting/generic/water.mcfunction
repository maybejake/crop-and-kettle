scoreboard players set $water_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:water_bucket"}] run scoreboard players add $water_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run scoreboard players add $water_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{pail:{liquid:"water"}}}}}] run scoreboard players add $water_count cnk.dummy 1

return 1