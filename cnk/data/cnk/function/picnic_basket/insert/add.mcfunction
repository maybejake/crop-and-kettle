data modify entity @s item.components."minecraft:bundle_contents" append from storage cnk:temp picnic_basket.item

execute store result entity @s item.components."minecraft:custom_data".cnk.picnic_basket.count int 1 run scoreboard players operation $basket_count cnk.dummy += $item_count cnk.dummy

function cnk:picnic_basket/interact/lore with entity @s item.components."minecraft:custom_data".cnk.picnic_basket