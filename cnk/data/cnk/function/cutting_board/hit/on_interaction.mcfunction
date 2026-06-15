execute on target unless entity @s[tag=cnk.hit_cutting_board] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:cutting_board/hit/on_display