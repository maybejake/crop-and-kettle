data modify entity @s item.components."minecraft:custom_data".cnk set value {}
particle minecraft:poof ~ ~-0.3 ~ 0.1 0.1 0.1 0 4
playsound entity.item.pickup block @a ~ ~ ~ 0.6 1
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.mixing_bowl_item] run kill @s
scoreboard players set @s cnk.item_count 0