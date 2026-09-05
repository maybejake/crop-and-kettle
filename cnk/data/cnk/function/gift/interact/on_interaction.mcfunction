execute on target unless entity @s[tag=cnk.interact_gift] run return fail

execute on target run swing @s mainhand

data remove entity @s interaction
execute on vehicle at @s run function cnk:gift/interact/open