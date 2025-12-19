execute if score @s cnk.item_count matches 5.. run return fail
execute if score @s cnk.item_count matches 1 on passengers if entity @s[tag=cnk.plate_1,tag=cnk.plate_placeable] run return fail

advancement grant @p[tag=cnk.interact_plate] only cnk:visible/plate

scoreboard players operation $global cnk.item_count = @s cnk.item_count
execute summon minecraft:item_display at @s run function cnk:plate/item/place
scoreboard players operation @s cnk.item_count = $global cnk.item_count

function cnk:plate/update/main