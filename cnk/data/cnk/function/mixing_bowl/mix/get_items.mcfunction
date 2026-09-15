# get items and sanitise data
data remove storage cnk:temp data
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] run data modify storage cnk:temp data append from entity @s item
function cnk:data_sanitiser/main
data modify storage cnk:temp mixing_bowl.Items set from storage cnk:temp data

execute store result score $mixing_bowl_item_count cnk.dummy run data get storage cnk:temp mixing_bowl.Items