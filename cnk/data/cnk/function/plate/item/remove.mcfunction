playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2
execute if entity @s[tag=cnk.plate_placeable] run data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".cnk.placeable.old_model
execute if entity @s[tag=cnk.plate_placeable] run data remove entity @s item.components."minecraft:custom_data".cnk.placeable.old_model
execute if data entity @s item.components run function cnk:plate/item/item_macro_components with entity @s item
execute unless data entity @s item.components run function cnk:plate/item/item_macro with entity @s item
kill @s