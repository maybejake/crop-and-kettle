# get last item
data modify storage cnk:temp picnic_basket.last_item set from entity @s item.components."minecraft:bundle_contents"[-1]

# no last item, new stack
execute unless data storage cnk:temp picnic_basket.last_item run return run function cnk:picnic_basket/insert/add/new

# remove count for comparison
data remove storage cnk:temp picnic_basket.last_item.count

# get item to be added and remove count
data modify storage cnk:temp picnic_basket.item_comparison set from storage cnk:temp picnic_basket.item
data remove storage cnk:temp picnic_basket.item_comparison.count

execute store success score $difference cnk.dummy run data modify storage cnk:temp picnic_basket.item_comparison set from storage cnk:temp picnic_basket.last_item
execute if score $difference cnk.dummy matches 1 run function cnk:picnic_basket/insert/add/new
execute if score $difference cnk.dummy matches 0 run function cnk:picnic_basket/insert/add/merge