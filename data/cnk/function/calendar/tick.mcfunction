execute if score @s cnk.hit_count matches 1.. run function cnk:calendar/break/check
execute if block ^ ^ ^-1 #minecraft:air run function cnk:calendar/break/break
execute unless block ~ ~ ~ #minecraft:air run function cnk:calendar/break/break