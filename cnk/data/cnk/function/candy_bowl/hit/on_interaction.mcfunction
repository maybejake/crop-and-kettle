execute on target unless entity @s[tag=cnk.hit_candy_bowl] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:candy_bowl/hit/on_display