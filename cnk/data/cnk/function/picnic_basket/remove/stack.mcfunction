# get item count
execute store result score $count cnk.dummy run data get storage cnk:temp picnic_basket.item.count

# remove item count from total
scoreboard players operation $basket_count cnk.dummy -= $count cnk.dummy

# remove stack
data remove entity @s item.components."minecraft:bundle_contents"[-1]