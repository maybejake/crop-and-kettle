execute if entity @s[tag=cnk.mixing] run return fail

execute if entity @p[tag=cnk.interact_mixing_bowl,predicate=cnk:sneaking] on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] on vehicle run return run function cnk:mixing_bowl/item/clear
execute if entity @p[tag=cnk.interact_mixing_bowl,predicate=cnk:sneaking] if data entity @s item.components."minecraft:custom_data".cnk.last_recipe run return run function cnk:mixing_bowl/repeat/main
execute unless items entity @p[tag=cnk.interact_mixing_bowl,distance=..20] weapon.mainhand * on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] on vehicle run return run function cnk:mixing_bowl/mix/main
execute if items entity @p[tag=cnk.interact_mixing_bowl,distance=..20] weapon.mainhand * run return run function cnk:mixing_bowl/item/main