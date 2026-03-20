schedule function cnk:tick_5 5t replace

execute as @e[type=minecraft:item,tag=cnk.active_item] at @s run function cnk:active_items

execute as @a[predicate=cnk:meat_guide/either] at @s run function cnk:mystery/guide/main

execute store result score $tile_drops cnk.dummy run gamerule block_drops
