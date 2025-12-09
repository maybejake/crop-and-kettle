scoreboard players set $ice_count cnk.dummy 0

execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:ice"}] run scoreboard players add $ice_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:blue_ice"}] run scoreboard players add $ice_count cnk.dummy 1
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:packed_ice"}] run scoreboard players add $ice_count cnk.dummy 1

return 1