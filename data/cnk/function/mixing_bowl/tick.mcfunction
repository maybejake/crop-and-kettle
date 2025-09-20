execute if score @s cnk.hit_count matches 1.. run function cnk:mixing_bowl/break/check
execute unless block ~ ~ ~ #minecraft:air run function cnk:mixing_bowl/break/break
execute if block ~ ~-1 ~ #minecraft:air run function cnk:mixing_bowl/break/break

execute if entity @s[tag=cnk.mixing] run function cnk:mixing_bowl/mix/process