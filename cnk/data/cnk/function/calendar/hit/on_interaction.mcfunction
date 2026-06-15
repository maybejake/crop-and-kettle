execute on target unless entity @s[tag=cnk.hit_calendar] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:calendar/hit/on_display