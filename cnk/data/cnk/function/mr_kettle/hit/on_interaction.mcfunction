execute on target unless entity @s[tag=cnk.hit_mr_kettle] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:mr_kettle/hit/on_display