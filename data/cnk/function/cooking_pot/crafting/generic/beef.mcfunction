scoreboard players set $beef_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"beef_cutlets"}}}}}] run scoreboard players add $beef_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:beef"}] run scoreboard players add $beef_count cnk.dummy 1

return 1