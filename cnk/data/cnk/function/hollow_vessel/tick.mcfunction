execute if entity @s[tag=cnk.hollow_vessel_filled] run return run function cnk:hollow_vessel/create/timer

execute if entity @s[tag=cnk.in_partial] run return run function cnk:hollow_vessel/in_partial
execute unless block ~ ~ ~ #cnk:air run return run function cnk:hollow_vessel/break/break
execute if block ~ ~-1 ~ #cnk:air run return run function cnk:hollow_vessel/break/break
execute if score @s cnk.hit_count matches 1.. run function cnk:hollow_vessel/break/check