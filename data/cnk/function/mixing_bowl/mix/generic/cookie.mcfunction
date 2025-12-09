scoreboard players set $cookie_count cnk.dummy 0

execute store result score $cookie_count cnk.dummy run data remove storage cnk:temp mixing_bowl.Items[{id:"minecraft:cookie"}]

return 1