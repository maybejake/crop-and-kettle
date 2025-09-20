execute if score @s cnk.item_count matches 4 on passengers if entity @s[tag=cnk.mixing_bowl_4] at @s run function cnk:mixing_bowl/item/remove
execute if score @s cnk.item_count matches 3 on passengers if entity @s[tag=cnk.mixing_bowl_3] at @s run function cnk:mixing_bowl/item/remove
execute if score @s cnk.item_count matches 2 on passengers if entity @s[tag=cnk.mixing_bowl_2] at @s run function cnk:mixing_bowl/item/remove
execute if score @s cnk.item_count matches 1 on passengers if entity @s[tag=cnk.mixing_bowl_1] at @s run function cnk:mixing_bowl/item/remove

scoreboard players remove @s cnk.item_count 1