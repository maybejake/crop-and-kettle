execute if entity @s[tag=cnk.mixing] run function cnk:mixing_bowl/mix/process

execute unless block ~ ~ ~ #cnk:air run return run function cnk:mixing_bowl/break/break
execute if block ~ ~-1 ~ #cnk:air run return run function cnk:mixing_bowl/break/break
execute if score @s cnk.hit_count matches 1.. run return run function cnk:mixing_bowl/break/check