execute on target unless entity @s[tag=cnk.interact_picnic_basket] run return fail

data remove entity @s interaction
execute on vehicle at @s run function cnk:picnic_basket/interact/on_display