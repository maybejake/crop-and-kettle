execute if entity @s[tag=cnk.gift_open] run function cnk:gift/opened

execute unless block ~ ~ ~ #cnk:air run return run function cnk:gift/break/break
execute if block ~ ~-1 ~ #cnk:air run return run function cnk:gift/break/break
execute if score @s cnk.hit_count matches 1.. run return run function cnk:gift/break/check