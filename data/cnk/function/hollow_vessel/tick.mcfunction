execute if score @s cnk.hit_count matches 1.. run function cnk:hollow_vessel/break/check
execute unless block ~ ~ ~ #cnk:air run function cnk:hollow_vessel/break/break
execute if block ~ ~-1 ~ #cnk:air run function cnk:hollow_vessel/break/break

execute if entity @s[tag=cnk.hollow_vessel_filled] run function cnk:hollow_vessel/create/timer