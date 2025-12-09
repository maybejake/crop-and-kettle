scoreboard players set $salmon_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"salmon_fillets"}}}}}] run scoreboard players add $salmon_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:salmon"}] run scoreboard players add $salmon_count cnk.dummy 1

return 1