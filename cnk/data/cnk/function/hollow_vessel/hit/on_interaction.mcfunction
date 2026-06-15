execute on target unless entity @s[tag=cnk.hit_hollow_vessel] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:hollow_vessel/hit/on_display