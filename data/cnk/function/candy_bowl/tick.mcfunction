execute if score @s cnk.hit_count matches 1.. run function cnk:candy_bowl/break/check
execute unless block ~ ~ ~ #cnk:air run function cnk:candy_bowl/break/break
execute if block ~ ~-1 ~ #cnk:air run function cnk:candy_bowl/break/break