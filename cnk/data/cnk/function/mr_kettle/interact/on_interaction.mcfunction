execute on target unless entity @s[tag=cnk.interact_mr_kettle] run return fail

execute on target run function cnk:swing/mainhand

data remove entity @s interaction
execute on vehicle at @s run function cnk:mr_kettle/interact/on_display