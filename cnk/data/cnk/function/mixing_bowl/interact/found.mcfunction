data remove entity @s interaction

execute on vehicle if entity @s[tag=cnk.mixing] run return fail

execute if entity @p[tag=cnk.interact_mixing_bowl,predicate=cnk:sneaking] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] on vehicle at @s run return run function cnk:mixing_bowl/item/clear
execute if entity @p[tag=cnk.interact_mixing_bowl,predicate=cnk:sneaking] on vehicle if data entity @s item.components."minecraft:custom_data".cnk.last_recipe run return run function cnk:mixing_bowl/repeat/main
execute unless items entity @p[tag=cnk.interact_mixing_bowl] weapon.mainhand * on vehicle on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] on vehicle at @s run return run function cnk:mixing_bowl/mix/main
execute if items entity @p[tag=cnk.interact_mixing_bowl] weapon.mainhand * on vehicle at @s run return run function cnk:mixing_bowl/item/main