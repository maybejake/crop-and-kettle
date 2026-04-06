execute store result score $movement_chance cnk.dummy run random value 0..3
execute unless score $movement_chance cnk.dummy matches 0 run return fail

data modify entity @s[tag=cnk.wibbled] transformation.left_rotation[0] set value 0.0
execute if entity @s[tag=cnk.wibbled] run return run tag @s remove cnk.wibbled

execute store result score $wibble_chance cnk.dummy run random value 0..2
execute if score $wibble_chance cnk.dummy matches 1 run data modify entity @s[tag=!cnk.wibbled] transformation.left_rotation[0] set value 0.3
execute if score $wibble_chance cnk.dummy matches 2 run data modify entity @s[tag=!cnk.wibbled] transformation.left_rotation[0] set value -0.3
execute if score $wibble_chance cnk.dummy matches 1.. run tag @s[tag=!cnk.wibbled] add cnk.wibbled