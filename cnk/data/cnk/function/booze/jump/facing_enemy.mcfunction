rotate @s ~ ~
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^2 summon minecraft:area_effect_cloud run function cnk:get_pos/main
data modify storage cnk:temp pos[1] set value 0.5

data modify entity @s Motion set from storage cnk:temp pos