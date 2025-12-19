scoreboard players set $fish_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"salmon_fillets"}}}}}] run scoreboard players add $fish_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:salmon"}] run scoreboard players add $fish_count cnk.dummy 1

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"cod_fillets"}}}}}] run scoreboard players add $fish_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:cod"}] run scoreboard players add $fish_count cnk.dummy 1

# fathoms
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{fish:{}}}}}] \
    unless data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{aberration:true}}}}] \
    unless data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"shrimp"}}}}] \
    unless data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"lobster"}}}}] \
    unless data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"blue_lobster"}}}}] \
    unless data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"carcinomalocaris"}}}}] \
    unless data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"nautilurk"}}}}] \
    run scoreboard players add $fish_count cnk.dummy 1

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"raw_fish"}}}}] run scoreboard players add $fish_count cnk.dummy 1

# tcc
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{tcc:{id:"swordfish"}}}}] run scoreboard players add $fish_count cnk.dummy 1

return 1