data modify storage cnk:temp mixing_bowl.Items set value []
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] run function cnk:mixing_bowl/mix/item_check
execute store result score $mixing_bowl_item_count cnk.dummy run data get storage cnk:temp mixing_bowl.Items