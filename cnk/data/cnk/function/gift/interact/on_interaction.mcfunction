execute on target unless entity @s[tag=cnk.interact_gift] run return fail

data remove entity @s interaction
execute on target run function cnk:swing/mainhand
execute on vehicle at @s run function cnk:gift/interact/open