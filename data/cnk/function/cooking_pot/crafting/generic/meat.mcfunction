scoreboard players set $meat_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"pork_cutlets"}}}}}] run scoreboard players add $meat_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"beef_cutlets"}}}}}] run scoreboard players add $meat_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"chicken_cutlets"}}}}}] run scoreboard players add $meat_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"mutton_cutlets"}}}}}] run scoreboard players add $meat_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rabbit_cutlets"}}}}}] run scoreboard players add $meat_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:porkchop"}] run scoreboard players add $meat_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:beef"}] run scoreboard players add $meat_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:chicken"}] run scoreboard players add $meat_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:mutton"}] run scoreboard players add $meat_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:rabbit"}] run scoreboard players add $meat_count cnk.dummy 1

return 1