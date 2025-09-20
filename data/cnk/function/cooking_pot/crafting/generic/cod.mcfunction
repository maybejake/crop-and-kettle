scoreboard players set $cod_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cod_fillets"}}}}}] run scoreboard players add $cod_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:cod"}] run scoreboard players add $cod_count cnk.dummy 1

return 1