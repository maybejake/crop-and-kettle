scoreboard players set $rotation cnk.dummy 0

execute if block ~ ~ ~ minecraft:player_head[rotation=0] run scoreboard players set $rotation cnk.dummy -1800
execute if block ~ ~ ~ minecraft:player_head[rotation=1] run scoreboard players set $rotation cnk.dummy -1575
execute if block ~ ~ ~ minecraft:player_head[rotation=2] run scoreboard players set $rotation cnk.dummy -1350
execute if block ~ ~ ~ minecraft:player_head[rotation=3] run scoreboard players set $rotation cnk.dummy -1125
execute if block ~ ~ ~ minecraft:player_head[rotation=4] run scoreboard players set $rotation cnk.dummy -900
execute if block ~ ~ ~ minecraft:player_head[rotation=5] run scoreboard players set $rotation cnk.dummy -675
execute if block ~ ~ ~ minecraft:player_head[rotation=6] run scoreboard players set $rotation cnk.dummy -450
execute if block ~ ~ ~ minecraft:player_head[rotation=7] run scoreboard players set $rotation cnk.dummy -225
execute if block ~ ~ ~ minecraft:player_head[rotation=8] run scoreboard players set $rotation cnk.dummy 0
execute if block ~ ~ ~ minecraft:player_head[rotation=9] run scoreboard players set $rotation cnk.dummy 225
execute if block ~ ~ ~ minecraft:player_head[rotation=10] run scoreboard players set $rotation cnk.dummy 450
execute if block ~ ~ ~ minecraft:player_head[rotation=11] run scoreboard players set $rotation cnk.dummy 675
execute if block ~ ~ ~ minecraft:player_head[rotation=12] run scoreboard players set $rotation cnk.dummy 900
execute if block ~ ~ ~ minecraft:player_head[rotation=13] run scoreboard players set $rotation cnk.dummy 1125
execute if block ~ ~ ~ minecraft:player_head[rotation=14] run scoreboard players set $rotation cnk.dummy 1350
execute if block ~ ~ ~ minecraft:player_head[rotation=15] run scoreboard players set $rotation cnk.dummy 1575

execute if block ~ ~ ~ minecraft:player_wall_head[facing=north] run scoreboard players set $rotation cnk.dummy 1800
execute if block ~ ~ ~ minecraft:player_wall_head[facing=east] run scoreboard players set $rotation cnk.dummy -900
execute if block ~ ~ ~ minecraft:player_wall_head[facing=south] run scoreboard players set $rotation cnk.dummy 0
execute if block ~ ~ ~ minecraft:player_wall_head[facing=west] run scoreboard players set $rotation cnk.dummy 900