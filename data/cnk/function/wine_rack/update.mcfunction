scoreboard players set $top cnk.dummy 0
scoreboard players set $left cnk.dummy 0
scoreboard players set $right cnk.dummy 0
scoreboard players set $bottom cnk.dummy 0

execute if data entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":0b}}}}}] run scoreboard players set $top cnk.dummy 1
execute if data entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":2b}}}}}] run scoreboard players set $left cnk.dummy 1
execute if data entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":1b}}}}}] run scoreboard players set $right cnk.dummy 1
execute if data entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":3b}}}}}] run scoreboard players set $bottom cnk.dummy 1

execute if score $top cnk.dummy matches 0 if score $left cnk.dummy matches 0 if score $right cnk.dummy matches 0 if score $bottom cnk.dummy matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/empty"
execute if score $top cnk.dummy matches 1 if score $left cnk.dummy matches 0 if score $right cnk.dummy matches 0 if score $bottom cnk.dummy matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/top"
execute if score $top cnk.dummy matches 0 if score $left cnk.dummy matches 1 if score $right cnk.dummy matches 0 if score $bottom cnk.dummy matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/left"
execute if score $top cnk.dummy matches 0 if score $left cnk.dummy matches 0 if score $right cnk.dummy matches 1 if score $bottom cnk.dummy matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/right"
execute if score $top cnk.dummy matches 0 if score $left cnk.dummy matches 0 if score $right cnk.dummy matches 0 if score $bottom cnk.dummy matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/bottom"
execute if score $top cnk.dummy matches 1 if score $left cnk.dummy matches 1 if score $right cnk.dummy matches 0 if score $bottom cnk.dummy matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/top_left"
execute if score $top cnk.dummy matches 1 if score $left cnk.dummy matches 0 if score $right cnk.dummy matches 1 if score $bottom cnk.dummy matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/top_right"
execute if score $top cnk.dummy matches 1 if score $left cnk.dummy matches 0 if score $right cnk.dummy matches 0 if score $bottom cnk.dummy matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/top_bottom"
execute if score $top cnk.dummy matches 0 if score $left cnk.dummy matches 1 if score $right cnk.dummy matches 1 if score $bottom cnk.dummy matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/left_right"
execute if score $top cnk.dummy matches 0 if score $left cnk.dummy matches 1 if score $right cnk.dummy matches 0 if score $bottom cnk.dummy matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/left_bottom"
execute if score $top cnk.dummy matches 0 if score $left cnk.dummy matches 0 if score $right cnk.dummy matches 1 if score $bottom cnk.dummy matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/right_bottom"
execute if score $top cnk.dummy matches 1 if score $left cnk.dummy matches 1 if score $right cnk.dummy matches 1 if score $bottom cnk.dummy matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/top_left_right"
execute if score $top cnk.dummy matches 1 if score $left cnk.dummy matches 1 if score $right cnk.dummy matches 0 if score $bottom cnk.dummy matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/top_left_bottom"
execute if score $top cnk.dummy matches 1 if score $left cnk.dummy matches 0 if score $right cnk.dummy matches 1 if score $bottom cnk.dummy matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/top_right_bottom"
execute if score $top cnk.dummy matches 0 if score $left cnk.dummy matches 1 if score $right cnk.dummy matches 1 if score $bottom cnk.dummy matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/left_right_bottom"
execute if score $top cnk.dummy matches 1 if score $left cnk.dummy matches 1 if score $right cnk.dummy matches 1 if score $bottom cnk.dummy matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:wine_rack/full"

#observer support
execute rotated as @s run setblock ^ ^ ^-0.51 minecraft:crafter[orientation=down_north] replace
execute rotated as @s run setblock ^ ^ ^-0.51 minecraft:crafter[orientation=up_north] replace

#comparator support
execute store result score $wine_count cnk.dummy run data get entity @s item.components."minecraft:bundle_contents"
execute if score $wine_count cnk.dummy matches 0 rotated as @s run data remove block ^ ^ ^-0.51 disabled_slots
execute if score $wine_count cnk.dummy matches 1 rotated as @s run data modify block ^ ^ ^-0.51 disabled_slots set value [I; 0]
execute if score $wine_count cnk.dummy matches 2 rotated as @s run data modify block ^ ^ ^-0.51 disabled_slots set value [I; 0, 1]
execute if score $wine_count cnk.dummy matches 3 rotated as @s run data modify block ^ ^ ^-0.51 disabled_slots set value [I; 0, 1, 2]
execute if score $wine_count cnk.dummy matches 4 rotated as @s run data modify block ^ ^ ^-0.51 disabled_slots set value [I; 0, 1, 2, 3]