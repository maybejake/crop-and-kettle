data remove entity @s interaction

execute if entity @p[tag=cnk.interact_plate,predicate=cnk:sneaking] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=cnk.plate_item] on vehicle at @s run return run function cnk:plate/item/clear
execute if items entity @p[tag=cnk.interact_plate] weapon.mainhand * on vehicle at @s run return run function cnk:plate/item/main