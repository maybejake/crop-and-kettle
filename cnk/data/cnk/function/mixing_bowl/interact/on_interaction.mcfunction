execute on target unless entity @s[tag=cnk.interact_mixing_bowl] run return fail

data remove entity @s interaction
execute on vehicle at @s run function cnk:mixing_bowl/interact/on_display