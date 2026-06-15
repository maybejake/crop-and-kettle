execute on target unless entity @s[tag=cnk.interact_crop] run return fail

data remove entity @s interaction
execute on vehicle if entity @s[type=minecraft:item_display,tag=cnk.crop] run function cnk:interact_crop/on_crop