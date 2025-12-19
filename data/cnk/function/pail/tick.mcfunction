execute if score @s cnk.hit_count matches 1.. run return run function cnk:pail/break/check
execute unless block ~ ~ ~ minecraft:barrier run function cnk:pail/break/break
execute unless block ~ ~1 ~ #cnk:air run function cnk:pail/break/break
execute if block ~ ~-1 ~ #cnk:air run function cnk:pail/break/break