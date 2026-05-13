execute if entity @s[tag=cnk.in_partial] run return run function cnk:cutting_board/in_partial
execute unless block ~ ~ ~ #cnk:air run return run function cnk:cutting_board/break/break
execute if block ~ ~-1 ~ #cnk:air run return run function cnk:cutting_board/break/break
execute if score @s cnk.hit_count matches 1.. run return run function cnk:cutting_board/break/check