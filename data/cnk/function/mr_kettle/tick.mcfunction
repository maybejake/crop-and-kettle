execute if score @s cnk.hit_count matches 1.. run function cnk:mr_kettle/break/check
execute unless block ~ ~ ~ #minecraft:air run function cnk:mr_kettle/break/break
execute if block ~ ~-1 ~ #minecraft:air run function cnk:mr_kettle/break/break