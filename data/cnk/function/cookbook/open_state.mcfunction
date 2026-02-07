tag @s add cnk.book_open

gamerule send_command_feedback false

scoreboard players set @s cnk.walk 0
scoreboard players set @s cnk.sprint 0
scoreboard players set @s cnk.sneak 0
scoreboard players set @s cnk.jump 0

data modify storage cnk:temp cookbook.rotation set from entity @s Rotation
execute store result score @s cnk.x_rot run data get storage cnk:temp cookbook.rotation[1] 10000
execute store result score @s cnk.y_rot run data get storage cnk:temp cookbook.rotation[0] 10000