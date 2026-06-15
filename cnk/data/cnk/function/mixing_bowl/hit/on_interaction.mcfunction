execute on target unless entity @s[tag=cnk.hit_mixing_bowl] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:mixing_bowl/hit/on_display