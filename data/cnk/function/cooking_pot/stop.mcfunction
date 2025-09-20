stopsound @a[distance=..6] block cnk:block.cooking_pot.cooking
scoreboard players set @s cnk.cook_time 0
data modify entity @s item.components."minecraft:item_model" set value "cnk:cooking_pot_open"