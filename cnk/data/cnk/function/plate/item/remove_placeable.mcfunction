# no old model set, remove model entirely
execute unless data entity @s item.components."minecraft:custom_data".cnk.placeable.old_model run return run data remove entity @s item.components."minecraft:item_model"

# has old model, update and remove data
data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".cnk.placeable.old_model
data remove entity @s item.components."minecraft:custom_data".cnk.placeable