execute if score @s cnk.item_count matches 1 on passengers if entity @s[tag=cnk.plate_1,tag=!cnk.no_model] if data entity @s item.components."minecraft:custom_data".cnk.placeable at @s run return run function cnk:plate/update/placeable

execute if score @s cnk.item_count matches 1 run function cnk:plate/update/1
execute if score @s cnk.item_count matches 2 run function cnk:plate/update/2
execute if score @s cnk.item_count matches 3 run function cnk:plate/update/3
execute if score @s cnk.item_count matches 4 run function cnk:plate/update/4
execute if score @s cnk.item_count matches 5 run function cnk:plate/update/5