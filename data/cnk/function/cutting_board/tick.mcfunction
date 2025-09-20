execute if score @s cnk.hit_count matches 1.. run function cnk:cutting_board/break/check
execute unless block ~ ~ ~ #minecraft:air run function cnk:cutting_board/break/break
execute if block ~ ~-1 ~ #minecraft:air run function cnk:cutting_board/break/break