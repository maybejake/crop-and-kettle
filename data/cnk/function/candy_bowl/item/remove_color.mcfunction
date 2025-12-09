$execute store result score $count cnk.dummy run data get entity @s item.components."minecraft:custom_data".candy.$(color)
$loot spawn ~ ~-0.3 ~ loot cnk:drops/candy/$(color)
$data remove entity @s item.components."minecraft:custom_data".candy.$(color)