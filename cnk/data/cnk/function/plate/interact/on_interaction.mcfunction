execute on target unless entity @s[tag=cnk.interact_plate] run return fail

data remove entity @s interaction
execute on vehicle at @s run function cnk:plate/interact/on_display