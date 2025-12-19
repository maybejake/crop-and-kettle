scoreboard players set $mushroom_count cnk.dummy 0

execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:red_mushroom"}] run scoreboard players add $mushroom_count cnk.dummy 1
execute if data storage cnk:temp cooking_pot.Items[{id:"minecraft:brown_mushroom"}] run scoreboard players add $mushroom_count cnk.dummy 1
return 1