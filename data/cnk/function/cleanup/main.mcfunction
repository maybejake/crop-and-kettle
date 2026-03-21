tag @s add cnk.checked

execute unless items entity @s contents #cnk:seeds run return fail

execute at @s align xyz positioned ~0.5 ~ ~0.5 if entity @n[type=minecraft:item_display,tag=cnk.crop,distance=..0.1] run return run function cnk:cleanup/crop/main