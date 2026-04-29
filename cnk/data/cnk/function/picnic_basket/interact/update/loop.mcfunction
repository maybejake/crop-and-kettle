scoreboard players add $loops cnk.dummy 1

# pop
data modify storage cnk:temp picnic_basket.update.item set from storage cnk:temp picnic_basket.update.items[-1]
data remove storage cnk:temp picnic_basket.update.items[-1]

# get count and add it
scoreboard players set $count cnk.dummy 1
execute unless data storage cnk:temp picnic_basket.update.item.count run data modify storage cnk:temp picnic_basket.update.item.count set value 1
execute store result score $count cnk.dummy run data get storage cnk:temp picnic_basket.update.item.count
scoreboard players operation $total_items cnk.dummy += $count cnk.dummy

# handle lore
execute if score $loops cnk.dummy matches ..5 run function cnk:picnic_basket/interact/update/add_name
execute if score $loops cnk.dummy matches 6 run function cnk:picnic_basket/interact/update/add_remainder

# loop
execute if data storage cnk:temp picnic_basket.update.items[] run function cnk:picnic_basket/interact/update/loop