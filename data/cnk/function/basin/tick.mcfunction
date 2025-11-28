execute if score @s cnk.hit_count matches 1.. run return run function cnk:basin/break/check
execute unless block ~ ~ ~ minecraft:barrier run function cnk:basin/break/break
execute if block ~ ~-1 ~ #cnk:air run function cnk:basin/break/break
