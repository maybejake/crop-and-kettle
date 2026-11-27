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