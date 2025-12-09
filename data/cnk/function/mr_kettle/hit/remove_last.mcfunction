execute if score @s cnk.item_count matches 4 on passengers if entity @s[tag=cnk.mr_kettle_4] at @s run function cnk:mr_kettle/item/remove
execute if score @s cnk.item_count matches 3 on passengers if entity @s[tag=cnk.mr_kettle_3] at @s run function cnk:mr_kettle/item/remove
execute if score @s cnk.item_count matches 2 on passengers if entity @s[tag=cnk.mr_kettle_2] at @s run function cnk:mr_kettle/item/remove
execute if score @s cnk.item_count matches 1 on passengers if entity @s[tag=cnk.mr_kettle_1] at @s run function cnk:mr_kettle/item/remove

scoreboard players remove @s cnk.item_count 1