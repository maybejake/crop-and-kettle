data remove storage cnk:temp mixing_bowl.compress
data remove storage cnk:temp compress

execute unless score $bowl_item_count cnk.dummy matches 1.. run return fail
data modify storage cnk:temp mixing_bowl.compress_index set value 0
data modify storage cnk:temp mixing_bowl.compress_item set from storage cnk:temp mixing_bowl.last_recipe[0]
data remove storage cnk:temp mixing_bowl.compress_item.count
function cnk:mixing_bowl/repeat/compress/macro with storage cnk:temp mixing_bowl

execute unless score $bowl_item_count cnk.dummy matches 2.. run return fail
data modify storage cnk:temp mixing_bowl.compress_index set value 1
data modify storage cnk:temp mixing_bowl.compress_item set from storage cnk:temp mixing_bowl.last_recipe[1]
data remove storage cnk:temp mixing_bowl.compress_item.count
function cnk:mixing_bowl/repeat/compress/macro with storage cnk:temp mixing_bowl

execute unless score $bowl_item_count cnk.dummy matches 3.. run return fail
data modify storage cnk:temp mixing_bowl.compress_index set value 2
data modify storage cnk:temp mixing_bowl.compress_item set from storage cnk:temp mixing_bowl.last_recipe[2]
data remove storage cnk:temp mixing_bowl.compress_item.count
function cnk:mixing_bowl/repeat/compress/macro with storage cnk:temp mixing_bowl

execute unless score $bowl_item_count cnk.dummy matches 4.. run return fail
data modify storage cnk:temp mixing_bowl.compress_index set value 3
data modify storage cnk:temp mixing_bowl.compress_item set from storage cnk:temp mixing_bowl.last_recipe[3]
data remove storage cnk:temp mixing_bowl.compress_item.count
function cnk:mixing_bowl/repeat/compress/macro with storage cnk:temp mixing_bowl