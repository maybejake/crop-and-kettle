schedule function cnk:tick_100 100t replace

tag @e[tag=cnk.crop,tag=cnk.ticking_crop,type=minecraft:item_display] remove cnk.ticking_crop
execute at @a run tag @e[tag=cnk.crop,tag=!cnk.ticking_crop,type=minecraft:item_display,distance=..145] add cnk.ticking_crop

execute as @e[tag=cnk.base_wheat,tag=cnk.ticking_crop,predicate=!cnk:wheat_0,type=minecraft:item_display] at @s run function cnk:crops/base_wheat
execute as @e[tag=cnk.base_pumpkin,tag=cnk.ticking_crop,predicate=!cnk:pumpkin_0,type=minecraft:item_display] at @s run function cnk:crops/base_pumpkin
execute as @e[tag=cnk.base_propagule,tag=cnk.ticking_crop,predicate=!cnk:propagule_0,type=minecraft:item_display] at @s run function cnk:crops/base_propagule

advancement revoke @a from cnk:cooldown