$execute if data entity @s item.components."minecraft:custom_data".cnk.pail{liquid:"$(liquid)"} run return run scoreboard players set $liquid_check cnk.dummy 1
execute unless data entity @s item.components."minecraft:custom_data".cnk.pail run return run scoreboard players set $liquid_check cnk.dummy 1
scoreboard players set $liquid_check cnk.dummy 0