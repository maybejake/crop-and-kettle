execute unless score $compress_item_count cnk.dummy matches 1.. run return fail
data modify storage cnk:temp mixing_bowl.remove_item.id set from storage cnk:temp mixing_bowl.compress[0].id
data modify storage cnk:temp mixing_bowl.remove_item.count set from storage cnk:temp mixing_bowl.compress[0].count
data remove storage cnk:temp mixing_bowl.remove_item.custom_data
data modify storage cnk:temp mixing_bowl.remove_item.custom_data set from storage cnk:temp mixing_bowl.compress[0].components."minecraft:custom_data"
execute unless data storage cnk:temp mixing_bowl.remove_item.custom_data run function cnk:mixing_bowl/repeat/remove/macro_no_component with storage cnk:temp mixing_bowl.remove_item
execute if data storage cnk:temp mixing_bowl.remove_item.custom_data run function cnk:mixing_bowl/repeat/remove/macro_component with storage cnk:temp mixing_bowl.remove_item

execute unless score $compress_item_count cnk.dummy matches 2.. run return fail
data modify storage cnk:temp mixing_bowl.remove_item.id set from storage cnk:temp mixing_bowl.compress[1].id
data modify storage cnk:temp mixing_bowl.remove_item.count set from storage cnk:temp mixing_bowl.compress[1].count
data remove storage cnk:temp mixing_bowl.remove_item.custom_data
data modify storage cnk:temp mixing_bowl.remove_item.custom_data set from storage cnk:temp mixing_bowl.compress[1].components."minecraft:custom_data"
execute unless data storage cnk:temp mixing_bowl.remove_item.custom_data run function cnk:mixing_bowl/repeat/remove/macro_no_component with storage cnk:temp mixing_bowl.remove_item
execute if data storage cnk:temp mixing_bowl.remove_item.custom_data run function cnk:mixing_bowl/repeat/remove/macro_component with storage cnk:temp mixing_bowl.remove_item

execute unless score $compress_item_count cnk.dummy matches 3.. run return fail
data modify storage cnk:temp mixing_bowl.remove_item.id set from storage cnk:temp mixing_bowl.compress[2].id
data modify storage cnk:temp mixing_bowl.remove_item.count set from storage cnk:temp mixing_bowl.compress[2].count
data remove storage cnk:temp mixing_bowl.remove_item.custom_data
data modify storage cnk:temp mixing_bowl.remove_item.custom_data set from storage cnk:temp mixing_bowl.compress[2].components."minecraft:custom_data"
execute unless data storage cnk:temp mixing_bowl.remove_item.custom_data run function cnk:mixing_bowl/repeat/remove/macro_no_component with storage cnk:temp mixing_bowl.remove_item
execute if data storage cnk:temp mixing_bowl.remove_item.custom_data run function cnk:mixing_bowl/repeat/remove/macro_component with storage cnk:temp mixing_bowl.remove_item

execute unless score $compress_item_count cnk.dummy matches 4.. run return fail
data modify storage cnk:temp mixing_bowl.remove_item.id set from storage cnk:temp mixing_bowl.compress[3].id
data modify storage cnk:temp mixing_bowl.remove_item.count set from storage cnk:temp mixing_bowl.compress[3].count
data remove storage cnk:temp mixing_bowl.remove_item.custom_data
data modify storage cnk:temp mixing_bowl.remove_item.custom_data set from storage cnk:temp mixing_bowl.compress[3].components."minecraft:custom_data"
execute unless data storage cnk:temp mixing_bowl.remove_item.custom_data run function cnk:mixing_bowl/repeat/remove/macro_no_component with storage cnk:temp mixing_bowl.remove_item
execute if data storage cnk:temp mixing_bowl.remove_item.custom_data run function cnk:mixing_bowl/repeat/remove/macro_component with storage cnk:temp mixing_bowl.remove_item