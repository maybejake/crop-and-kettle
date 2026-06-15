execute on target unless entity @s[tag=cnk.interact_faucet] run return fail

data remove entity @s interaction
execute on vehicle at @s run function cnk:faucet/interact/on_display