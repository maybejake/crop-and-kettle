scoreboard players set $pork_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"pork_cutlets"}}}}}] run scoreboard players add $pork_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:porkchop"}] run scoreboard players add $pork_count cnk.dummy 1

return 1