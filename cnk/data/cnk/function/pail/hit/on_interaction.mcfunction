execute on target unless entity @s[tag=cnk.hit_pail] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:pail/hit/on_display