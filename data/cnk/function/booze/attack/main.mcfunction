execute store result score $attack cnk.dummy run random value 1..100

execute unless entity @s[tag=cnk.bottle_attack] if score $attack cnk.dummy matches 76.. run tag @s add cnk.bottle_attack
execute if entity @s[tag=cnk.bottle_attack] anchored eyes facing entity @p[distance=..16,gamemode=!spectator,gamemode=!creative] eyes run return run function cnk:booze/attack/bottle/main with storage cnk:temp booze

execute if score $attack cnk.dummy matches ..75 anchored eyes facing entity @p[distance=..16,gamemode=!spectator,gamemode=!creative] eyes run return run function cnk:booze/attack/cork/main