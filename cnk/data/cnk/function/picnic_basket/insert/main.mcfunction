data remove storage cnk:temp picnic_basket

# get the item to insert and the hand it comes from
execute as @p[tag=cnk.interact_picnic_basket] run function cnk:picnic_basket/insert/get_item/switch

# if no data obtained, toggle
execute unless data storage cnk:temp picnic_basket.item run return run function cnk:picnic_basket/interact/toggle_open

# if not sneaking, set count to 1
execute as @p[tag=cnk.interact_picnic_basket] unless predicate cnk:sneaking run data modify storage cnk:temp picnic_basket.item.count set value 1

# if no count, set count to 1
execute unless data storage cnk:temp picnic_basket.item.count run data modify storage cnk:temp picnic_basket.item.count set value 1

# play a little sound
playsound minecraft:item.bundle.insert block @a ~ ~ ~ 1 0.6

# do a little particle
execute at @s rotated as @s run particle minecraft:dust_plume ^ ^0.3 ^0.25 0 0 0 0 4

# open basket (funeral)
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}

# calculate new count with item stack inserted
execute store result score $item_count cnk.dummy run data get storage cnk:temp picnic_basket.item.count
scoreboard players operation $temp_basket_count cnk.dummy = $basket_count cnk.dummy
scoreboard players operation $temp_basket_count cnk.dummy += $item_count cnk.dummy

# can't fit whole stack, split it
execute if score $temp_basket_count cnk.dummy > $max_items cnk.dummy run function cnk:picnic_basket/insert/partial

# get item count
data modify storage cnk:temp picnic_basket.item_count set from storage cnk:temp picnic_basket.item.count

# insert the items
function cnk:picnic_basket/insert/add/main

# update lore and count
function cnk:picnic_basket/interact/update/main

# remove the items from the player's hand
execute as @p[tag=cnk.interact_picnic_basket] run function cnk:picnic_basket/insert/remove with storage cnk:temp picnic_basket