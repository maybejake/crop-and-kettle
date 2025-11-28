execute if score @s cnk.item_count matches 5 on passengers if entity @s[tag=cnk.plate_5] at @s run function cnk:plate/item/remove
execute if score @s cnk.item_count matches 4 on passengers if entity @s[tag=cnk.plate_4] at @s run function cnk:plate/item/remove
execute if score @s cnk.item_count matches 3 on passengers if entity @s[tag=cnk.plate_3] at @s run function cnk:plate/item/remove
execute if score @s cnk.item_count matches 2 on passengers if entity @s[tag=cnk.plate_2] at @s run function cnk:plate/item/remove
execute if score @s cnk.item_count matches 1 on passengers if entity @s[tag=cnk.plate_1] at @s run function cnk:plate/item/remove

scoreboard players remove @s cnk.item_count 1
function cnk:plate/update/main