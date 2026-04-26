# remove one item from total
scoreboard players remove $basket_count cnk.dummy 1

# get item count
execute store result score $count cnk.dummy run data get storage cnk:temp picnic_basket.item.count

# remove one item
scoreboard players remove $count cnk.dummy 1

# if new count is 0, remove the item completely
execute if score $count cnk.dummy matches 0 run data remove entity @s item.components."minecraft:bundle_contents"[-1]

# if new count is more than 0, decrease by one
execute if score $count cnk.dummy matches 1.. store result entity @s item.components."minecraft:bundle_contents"[-1].count int 1 run scoreboard players get $count cnk.dummy

# set spawned item count to 1
data modify storage cnk:temp picnic_basket.item.count set value 1