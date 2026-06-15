execute on target unless entity @s[tag=cnk.interact_calendar] run return fail

data remove entity @s interaction
execute on target at @s run function cnk:calendar/interact/on_player