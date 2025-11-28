scoreboard players set $chicken_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chicken_cutlets"}}}}}] run scoreboard players add $chicken_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:chicken"}] run scoreboard players add $chicken_count cnk.dummy 1

return 1