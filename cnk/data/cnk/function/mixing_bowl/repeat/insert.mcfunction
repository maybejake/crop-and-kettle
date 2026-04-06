scoreboard players set $hand_place cnk.dummy 0

scoreboard players operation $global cnk.item_count = @s cnk.item_count
execute summon minecraft:item_display at @s run function cnk:mixing_bowl/item/place
scoreboard players operation @s cnk.item_count = $global cnk.item_count