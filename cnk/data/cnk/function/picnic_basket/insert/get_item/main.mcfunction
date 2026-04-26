function cnk:picnic_basket/insert/get_item/switch

# check item
scoreboard players set $item_check cnk.dummy 0
execute unless data storage cnk:temp picnic_basket.item.components."minecraft:custom_data" run scoreboard players set $item_check cnk.dummy 1
execute if data storage cnk:temp picnic_basket.item.components."minecraft:custom_data".cnk.ingredient run scoreboard players set $item_check cnk.dummy 1

# addon checks
function #cnk:addons/picnic_basket_checks

# shwing
execute if data storage cnk:temp picnic_basket{slot:"mainhand"} run swing @s mainhand
execute if data storage cnk:temp picnic_basket{slot:"offhand"} run swing @s offhand