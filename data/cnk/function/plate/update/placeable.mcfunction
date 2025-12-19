data merge entity @s {transformation:{translation:[0.0f,0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @s item.components."minecraft:custom_data".cnk.placeable.old_model set from entity @s item.components."minecraft:item_model"
data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".cnk.placeable.model

tag @s add cnk.plate_placeable