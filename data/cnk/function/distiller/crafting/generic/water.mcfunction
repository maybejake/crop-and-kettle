scoreboard players set $water_count cnk.dummy 0

execute if data storage cnk:temp distiller.Items[{id:"minecraft:water_bucket"}] run scoreboard players add $water_count cnk.dummy 1
execute if data storage cnk:temp distiller.Items[{id:"minecraft:potion",components:{"minecraft:potion_contents":{"potion":"minecraft:water"}}}] run scoreboard players add $water_count cnk.dummy 1

return 1