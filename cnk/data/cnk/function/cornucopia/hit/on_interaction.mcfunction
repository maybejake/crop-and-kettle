execute on target unless entity @s[tag=cnk.hit_cornucopia] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:cornucopia/hit/on_display