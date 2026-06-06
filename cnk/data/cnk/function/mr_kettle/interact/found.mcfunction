data remove entity @s interaction

execute as @p[tag=cnk.interact_mr_kettle,distance=..20] run function cnk:swing/mainhand
execute if entity @p[tag=cnk.interact_mr_kettle,distance=..20,predicate=cnk:sneaking] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=cnk.mr_kettle_item] on vehicle at @s run return run function cnk:mr_kettle/item/clear
execute unless items entity @p[tag=cnk.interact_mr_kettle,distance=..20] weapon.mainhand * on vehicle at @s run return run playsound cnk:item.mr_kettle.squeak block @a ~ ~ ~ 1 1
execute if items entity @p[tag=cnk.interact_mr_kettle,distance=..20] weapon.mainhand * on vehicle at @s run return run function cnk:mr_kettle/item/main