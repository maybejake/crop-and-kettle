swing @p[tag=cnk.interact_mixing_bowl,distance=..20] mainhand
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] run function cnk:mixing_bowl/item/remove
scoreboard players set @s cnk.item_count 0