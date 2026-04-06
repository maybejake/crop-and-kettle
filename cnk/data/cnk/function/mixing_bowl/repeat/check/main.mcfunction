scoreboard players set $items_found cnk.dummy 1

execute unless score $compress_item_count cnk.dummy matches 1.. run return fail
data modify storage cnk:temp mixing_bowl.find_item.id set from storage cnk:temp mixing_bowl.compress[0].id
execute store result score $count cnk.dummy run data get storage cnk:temp mixing_bowl.compress[0].count
data remove storage cnk:temp mixing_bowl.find_item.custom_data
data modify storage cnk:temp mixing_bowl.find_item.custom_data set from storage cnk:temp mixing_bowl.compress[0].components."minecraft:custom_data"
execute unless data storage cnk:temp mixing_bowl.find_item.custom_data run function cnk:mixing_bowl/repeat/check/macro_no_component with storage cnk:temp mixing_bowl.find_item
execute if data storage cnk:temp mixing_bowl.find_item.custom_data run function cnk:mixing_bowl/repeat/check/macro_component with storage cnk:temp mixing_bowl.find_item
execute if score $items_found cnk.dummy matches 0 run return fail

execute unless score $compress_item_count cnk.dummy matches 2.. run return fail
data modify storage cnk:temp mixing_bowl.find_item.id set from storage cnk:temp mixing_bowl.compress[1].id
execute store result score $count cnk.dummy run data get storage cnk:temp mixing_bowl.compress[1].count
data remove storage cnk:temp mixing_bowl.find_item.custom_data
data modify storage cnk:temp mixing_bowl.find_item.custom_data set from storage cnk:temp mixing_bowl.compress[1].components."minecraft:custom_data"
execute unless data storage cnk:temp mixing_bowl.find_item.custom_data run function cnk:mixing_bowl/repeat/check/macro_no_component with storage cnk:temp mixing_bowl.find_item
execute if data storage cnk:temp mixing_bowl.find_item.custom_data run function cnk:mixing_bowl/repeat/check/macro_component with storage cnk:temp mixing_bowl.find_item
execute if score $items_found cnk.dummy matches 0 run return fail

execute unless score $compress_item_count cnk.dummy matches 3.. run return fail
data modify storage cnk:temp mixing_bowl.find_item.id set from storage cnk:temp mixing_bowl.compress[2].id
execute store result score $count cnk.dummy run data get storage cnk:temp mixing_bowl.compress[2].count
data remove storage cnk:temp mixing_bowl.find_item.custom_data
data modify storage cnk:temp mixing_bowl.find_item.custom_data set from storage cnk:temp mixing_bowl.compress[2].components."minecraft:custom_data"
execute unless data storage cnk:temp mixing_bowl.find_item.custom_data run function cnk:mixing_bowl/repeat/check/macro_no_component with storage cnk:temp mixing_bowl.find_item
execute if data storage cnk:temp mixing_bowl.find_item.custom_data run function cnk:mixing_bowl/repeat/check/macro_component with storage cnk:temp mixing_bowl.find_item
execute if score $items_found cnk.dummy matches 0 run return fail

execute unless score $compress_item_count cnk.dummy matches 4.. run return fail
data modify storage cnk:temp mixing_bowl.find_item.id set from storage cnk:temp mixing_bowl.compress[3].id
execute store result score $count cnk.dummy run data get storage cnk:temp mixing_bowl.compress[3].count
data remove storage cnk:temp mixing_bowl.find_item.custom_data
data modify storage cnk:temp mixing_bowl.find_item.custom_data set from storage cnk:temp mixing_bowl.compress[3].components."minecraft:custom_data"
execute unless data storage cnk:temp mixing_bowl.find_item.custom_data run function cnk:mixing_bowl/repeat/check/macro_no_component with storage cnk:temp mixing_bowl.find_item
execute if data storage cnk:temp mixing_bowl.find_item.custom_data run function cnk:mixing_bowl/repeat/check/macro_component with storage cnk:temp mixing_bowl.find_item
execute if score $items_found cnk.dummy matches 0 run return fail