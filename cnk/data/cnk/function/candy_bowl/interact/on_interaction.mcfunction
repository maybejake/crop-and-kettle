execute on target unless entity @s[tag=cnk.interact_candy_bowl] run return fail

execute on vehicle at @s run function cnk:candy_bowl/interact/on_display
data remove entity @s interaction