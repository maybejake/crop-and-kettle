execute on target unless entity @s[tag=cnk.hit_plate] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:plate/hit/on_display