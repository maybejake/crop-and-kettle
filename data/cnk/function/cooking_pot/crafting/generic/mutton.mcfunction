scoreboard players set $mutton_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"mutton_cutlets"}}}}}] run scoreboard players add $mutton_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:mutton"}] run scoreboard players add $mutton_count cnk.dummy 1

return 1