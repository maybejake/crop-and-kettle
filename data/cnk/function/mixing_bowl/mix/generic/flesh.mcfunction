scoreboard players set $flesh_count cnk.dummy 0

execute store result score $flesh_count cnk.dummy run data remove storage cnk:temp mixing_bowl.Items[{id:"minecraft:rotten_flesh"}]

return 1