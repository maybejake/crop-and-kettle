scoreboard players set $rabbit_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"rabbit_cutlets"}}}}}] run scoreboard players add $rabbit_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:rabbit"}] run scoreboard players add $rabbit_count cnk.dummy 1

return 1