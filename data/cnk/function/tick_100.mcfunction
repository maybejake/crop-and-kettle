schedule function cnk:tick_100 100t replace

tag @e[type=minecraft:item_display,tag=cnk.crop,tag=cnk.ticking_crop] remove cnk.ticking_crop
execute at @a run tag @e[type=minecraft:item_display,tag=cnk.crop,tag=!cnk.ticking_crop,distance=..145] add cnk.ticking_crop