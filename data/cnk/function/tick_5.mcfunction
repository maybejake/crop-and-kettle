schedule function cnk:tick_5 5t replace

execute as @e[type=minecraft:item_display,tag=cnk.base_wheat,tag=cnk.ticking_crop,predicate=!cnk:wheat_0] at @s run function cnk:crops/base_wheat
execute as @e[type=minecraft:item_display,tag=cnk.base_pumpkin,tag=cnk.ticking_crop,predicate=!cnk:pumpkin_0] at @s run function cnk:crops/base_pumpkin
execute as @e[type=minecraft:item_display,tag=cnk.base_propagule,tag=cnk.ticking_crop,predicate=!cnk:propagule_0] at @s run function cnk:crops/base_propagule

execute as @e[type=minecraft:item,tag=cnk.active_item] at @s run function cnk:active_items

execute as @a[predicate=cnk:meat_guide/either] at @s run function cnk:mystery/guide/main

execute store result score $tile_drops cnk.dummy run gamerule doTileDrops