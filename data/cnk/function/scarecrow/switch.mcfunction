execute store result score $chance cnk.dummy run random value 1..10000
execute unless score $chance cnk.dummy matches 1 run return fail

execute if data entity @s item.components{"minecraft:item_model":"cnk:scarecrow"} run return run data modify entity @s item.components."minecraft:item_model" set value "cnk:scarecrow_2"
execute if data entity @s item.components{"minecraft:item_model":"cnk:scarecrow_2"} run return run data modify entity @s item.components."minecraft:item_model" set value "cnk:scarecrow"