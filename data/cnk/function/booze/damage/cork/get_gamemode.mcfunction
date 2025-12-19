execute if entity @s[gamemode=survival] run scoreboard players set $gamemode cnk.dummy 0
execute if entity @s[gamemode=creative] run scoreboard players set $gamemode cnk.dummy 1
execute if entity @s[gamemode=adventure] run scoreboard players set $gamemode cnk.dummy 2
execute if entity @s[gamemode=spectator] run scoreboard players set $gamemode cnk.dummy 3