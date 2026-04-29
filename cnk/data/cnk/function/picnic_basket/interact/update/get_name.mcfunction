data remove storage cnk:temp picnic_basket.update.item_name

# try components
execute if data storage cnk:temp picnic_basket.update.item.components."minecraft:item_name" run return run data modify storage cnk:temp picnic_basket.update.item_name set from storage cnk:temp picnic_basket.update.item.components."minecraft:item_name"
execute if data storage cnk:temp picnic_basket.update.item.components."minecraft:custom_name" run return run data modify storage cnk:temp picnic_basket.update.item_name set from storage cnk:temp picnic_basket.update.item.components."minecraft:custom_name"

# gotta use entity
execute positioned ~ ~1000 ~ run function cnk:picnic_basket/interact/update/entity/main