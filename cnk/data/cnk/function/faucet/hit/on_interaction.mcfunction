execute on target unless entity @s[tag=cnk.hit_faucet] run return fail

data remove entity @s attack
execute on vehicle at @s run function cnk:faucet/hit/on_display