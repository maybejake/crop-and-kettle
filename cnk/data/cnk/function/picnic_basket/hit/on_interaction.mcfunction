execute on target unless entity @s[tag=cnk.hit_picnic_basket] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:picnic_basket/hit/on_display