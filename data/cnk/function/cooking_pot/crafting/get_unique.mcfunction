data remove storage cnk:temp unique_items_check[].count

data modify storage cnk:temp unique_items set value {1:false, 2:false, 3:false, 4:false, 5:false}

execute if data storage cnk:temp unique_items_check[0].id run data modify storage cnk:temp unique_items.1 set from storage cnk:temp unique_items_check[0].id
execute unless data storage cnk:temp unique_items_check[0].id run data modify storage cnk:temp unique_items.1 set from storage cnk:temp unique_items_check[0].components."minecraft:custom_data"

execute if data storage cnk:temp unique_items_check[1].id run data modify storage cnk:temp unique_items.2 set from storage cnk:temp unique_items_check[1].id
execute unless data storage cnk:temp unique_items_check[1].id run data modify storage cnk:temp unique_items.2 set from storage cnk:temp unique_items_check[1].components."minecraft:custom_data"

execute if data storage cnk:temp unique_items_check[2].id run data modify storage cnk:temp unique_items.3 set from storage cnk:temp unique_items_check[2].id
execute unless data storage cnk:temp unique_items_check[2].id run data modify storage cnk:temp unique_items.3 set from storage cnk:temp unique_items_check[2].components."minecraft:custom_data"

execute if data storage cnk:temp unique_items_check[3].id run data modify storage cnk:temp unique_items.4 set from storage cnk:temp unique_items_check[3].id
execute unless data storage cnk:temp unique_items_check[3].id run data modify storage cnk:temp unique_items.4 set from storage cnk:temp unique_items_check[3].components."minecraft:custom_data"

execute if data storage cnk:temp unique_items_check[4].id run data modify storage cnk:temp unique_items.5 set from storage cnk:temp unique_items_check[4].id
execute unless data storage cnk:temp unique_items_check[4].id run data modify storage cnk:temp unique_items.5 set from storage cnk:temp unique_items_check[4].components."minecraft:custom_data"

function cnk:cooking_pot/crafting/get_unique_macro with storage cnk:temp unique_items