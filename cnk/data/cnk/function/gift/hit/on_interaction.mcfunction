execute on target unless entity @s[tag=cnk.hit_gift] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:gift/hit/on_display