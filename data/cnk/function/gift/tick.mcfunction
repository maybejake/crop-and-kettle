execute if score @s cnk.hit_count matches 1.. run function cnk:gift/break/check
execute unless block ~ ~ ~ #cnk:air run function cnk:gift/break/break
execute if block ~ ~-1 ~ #cnk:air run function cnk:gift/break/break

execute if entity @s[tag=cnk.gift_open] run function cnk:gift/opened