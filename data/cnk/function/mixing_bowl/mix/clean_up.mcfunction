data modify entity @s item.components."minecraft:custom_data".cnk set value {}
tag @s add cnk.finished_mixing_bowl
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] run data modify entity @n[tag=cnk.finished_mixing_bowl] item.components."minecraft:custom_data".cnk.last_recipe append from entity @s item
tag @s remove cnk.finished_mixing_bowl

particle minecraft:poof ~ ~-0.3 ~ 0.1 0.1 0.1 0 4
playsound entity.item.pickup block @a ~ ~ ~ 0.6 1
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] run kill @s
scoreboard players set @s cnk.item_count 0