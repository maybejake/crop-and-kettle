execute if score @s cnk.item_count matches 4.. run return run function cnk:mixing_bowl/mix/main

scoreboard players operation $global cnk.item_count = @s cnk.item_count
execute summon minecraft:item_display at @s run function cnk:mixing_bowl/item/place
scoreboard players operation @s cnk.item_count = $global cnk.item_count