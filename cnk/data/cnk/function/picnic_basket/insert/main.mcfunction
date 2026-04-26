data remove storage cnk:temp picnic_basket

# play a little sound
playsound minecraft:item.bundle.insert block @a ~ ~ ~ 1 0.6

# open basket (funeral)
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}

# get the item to insert and the hand it comes from
execute as @p[tag=cnk.interact_picnic_basket] run function cnk:picnic_basket/insert/switch

# calculate new count with item stack inserted
scoreboard players set $item_count cnk.dummy 1
execute store result score $item_count cnk.dummy run data get storage cnk:temp picnic_basket.item.count
scoreboard players operation $temp_basket_count cnk.dummy = $basket_count cnk.dummy
scoreboard players operation $temp_basket_count cnk.dummy += $item_count cnk.dummy

# can't fit whole stack, split it
execute if score $temp_basket_count cnk.dummy > $max_items cnk.dummy run return run function cnk:picnic_basket/insert/partial/main

# insert the items
function cnk:picnic_basket/insert/add

# remove the items from the player's hand
execute if data storage cnk:temp picnic_basket{slot:"mainhand"} run item replace entity @p[tag=cnk.interact_picnic_basket] weapon.mainhand with minecraft:air
execute if data storage cnk:temp picnic_basket{slot:"offhand"} run item replace entity @p[tag=cnk.interact_picnic_basket] weapon.offhand with minecraft:air