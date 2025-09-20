$execute unless data storage cnk:temp unique_items{1:false} run data modify storage cnk:temp unique_items.list.'$(1)' set value true
$execute unless data storage cnk:temp unique_items{2:false} run data modify storage cnk:temp unique_items.list.'$(2)' set value true
$execute unless data storage cnk:temp unique_items{3:false} run data modify storage cnk:temp unique_items.list.'$(3)' set value true
$execute unless data storage cnk:temp unique_items{4:false} run data modify storage cnk:temp unique_items.list.'$(4)' set value true
$execute unless data storage cnk:temp unique_items{5:false} run data modify storage cnk:temp unique_items.list.'$(5)' set value true

execute store result score $unique_items cnk.dummy run data get storage cnk:temp unique_items.list