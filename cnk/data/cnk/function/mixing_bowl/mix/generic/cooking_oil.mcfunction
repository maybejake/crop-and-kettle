scoreboard players set $cooking_oil_count cnk.dummy 0
execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cooking_oil"}}}}}] run scoreboard players add $cooking_oil_count cnk.dummy 1
return 1