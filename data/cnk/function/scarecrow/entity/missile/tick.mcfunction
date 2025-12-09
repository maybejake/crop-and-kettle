execute unless entity @p[distance=..24,gamemode=!spectator,gamemode=!creative] run return run function cnk:scarecrow/entity/missile/explode

execute on passengers if entity @s[type=minecraft:interaction] if data entity @s attack on vehicle run function cnk:scarecrow/entity/missile/explode

particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 2

execute unless score @s cnk.timer matches 15.. run scoreboard players add @s cnk.timer 1
execute unless score @s cnk.timer matches 15.. rotated as @s run return run tp @s ^ ^ ^0.25

execute positioned ~-0.15 ~-0.15 ~-0.15 if entity @p[dx=0,gamemode=!spectator,gamemode=!creative] positioned ~-0.7 ~-0.7 ~-0.7 if entity @p[dx=0,gamemode=!spectator,gamemode=!creative] run function cnk:scarecrow/entity/missile/explode
execute rotated as @s unless block ^ ^ ^ #cnk:blocks run function cnk:scarecrow/entity/missile/explode

execute facing entity @p[distance=..24,gamemode=!spectator,gamemode=!creative] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.25 ~ ~