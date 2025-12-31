data modify storage cnk:temp mixing_bowl.last_recipe set from entity @s item.components."minecraft:custom_data".cnk.last_recipe
data modify storage cnk:temp mixing_bowl.last_recipe[].count set value 1
execute if data storage cnk:temp mixing_bowl.last_recipe[{components:{"minecraft:custom_data":{cnk:{block:{type:"pail"}}}}}] run function cnk:mixing_bowl/repeat/pail
execute store result score $bowl_item_count cnk.dummy run data get storage cnk:temp mixing_bowl.last_recipe

#remove duplicates, increase count
function cnk:mixing_bowl/repeat/compress/main

execute store result score $compress_item_count cnk.dummy run data get storage cnk:temp mixing_bowl.compress

#ensure items exist
function cnk:mixing_bowl/repeat/check/main

execute if score $items_found cnk.dummy matches 0 run return fail

#all items found, GET EM OUTTA HERE
function cnk:mixing_bowl/repeat/remove/main

#start inserting items
execute unless score $bowl_item_count cnk.dummy matches 1.. run return fail
data modify storage cnk:temp mixing_bowl.input set from storage cnk:temp mixing_bowl.last_recipe[0]
function cnk:mixing_bowl/repeat/insert

execute unless score $bowl_item_count cnk.dummy matches 2.. run return run function cnk:mixing_bowl/mix/main
data modify storage cnk:temp mixing_bowl.input set from storage cnk:temp mixing_bowl.last_recipe[1]
function cnk:mixing_bowl/repeat/insert

execute unless score $bowl_item_count cnk.dummy matches 3.. run return run function cnk:mixing_bowl/mix/main
data modify storage cnk:temp mixing_bowl.input set from storage cnk:temp mixing_bowl.last_recipe[2]
function cnk:mixing_bowl/repeat/insert

execute unless score $bowl_item_count cnk.dummy matches 4.. run return run function cnk:mixing_bowl/mix/main
data modify storage cnk:temp mixing_bowl.input set from storage cnk:temp mixing_bowl.last_recipe[3]
function cnk:mixing_bowl/repeat/insert

function cnk:mixing_bowl/mix/main