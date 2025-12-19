execute if score @s cnk.hit_count matches 1.. run function cnk:scarecrow/break/check
execute unless block ~ ~ ~ #cnk:air run return run function cnk:scarecrow/break/break
execute if block ~ ~-1 ~ #cnk:air run return run function cnk:scarecrow/break/break