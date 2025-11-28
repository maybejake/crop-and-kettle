data remove entity @s interaction

execute on vehicle if entity @s[tag=cnk.mixing] run return fail

execute if entity @p[tag=cnk.interact_mr_kettle,predicate=cnk:sneaking] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=cnk.mr_kettle_item] on vehicle at @s run return run function cnk:mr_kettle/item/clear
execute unless items entity @p[tag=cnk.interact_mr_kettle] weapon.mainhand * on vehicle at @s run return run playsound cnk:item.mr_kettle.squeak block @a ~ ~ ~ 1 1
execute if items entity @p[tag=cnk.interact_mr_kettle] weapon.mainhand * on vehicle at @s run return run function cnk:mr_kettle/item/main