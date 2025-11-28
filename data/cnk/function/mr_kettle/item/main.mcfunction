execute if score @s cnk.item_count matches 2.. run return fail

scoreboard players operation $global cnk.item_count = @s cnk.item_count
execute summon minecraft:item_display at @s run function cnk:mr_kettle/item/place
scoreboard players operation @s cnk.item_count = $global cnk.item_count