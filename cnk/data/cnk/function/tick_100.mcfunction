schedule function cnk:tick_100 100t replace

tag @e[tag=cnk.crop,tag=cnk.ticking_crop,type=minecraft:item_display] remove cnk.ticking_crop
execute at @a run tag @e[tag=cnk.crop,tag=!cnk.ticking_crop,type=minecraft:item_display,distance=..145] add cnk.ticking_crop

advancement revoke @a from cnk:cooldown