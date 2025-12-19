execute store result score $movement_chance cnk.dummy run random value 0..2
execute unless score $movement_chance cnk.dummy matches 0 run return fail

data modify entity @s[tag=cnk.wobbled] transformation.translation[1] set value -0.8
execute if entity @s[tag=cnk.wobbled] run return run tag @s remove cnk.wobbled

execute store result score $wobble_chance cnk.dummy run random value 0..2
execute if score $wobble_chance cnk.dummy matches 1 run data modify entity @s[tag=!cnk.wobbled] transformation.translation[1] set value -0.4
execute if score $wobble_chance cnk.dummy matches 2 run data modify entity @s[tag=!cnk.wobbled] transformation.translation[1] set value -1.2
execute if score $wobble_chance cnk.dummy matches 1.. run tag @s[tag=!cnk.wobbled] add cnk.wobbled