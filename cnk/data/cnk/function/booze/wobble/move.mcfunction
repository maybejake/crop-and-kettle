execute store result score $chance cnk.dummy run random value 0..2
execute if score $chance cnk.dummy matches 1.. run tag @s add cnk.wobbled
execute if score $chance cnk.dummy matches 1 run return run data modify storage cnk:temp booze.bottle_transformation.translation[1] set value -0.4
execute if score $chance cnk.dummy matches 2 run return run data modify storage cnk:temp booze.bottle_transformation.translation[1] set value -1.2
