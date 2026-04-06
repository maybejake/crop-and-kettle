execute unless data storage dcf:settings {enabled:true} run return fail
execute if entity @s[tag=dcf.open] run return fail

tag @s add dcf.open

gamerule send_command_feedback false

scoreboard players set @s dcf.walk 0
scoreboard players set @s dcf.sprint 0
scoreboard players set @s dcf.sneak 0
scoreboard players set @s dcf.jump 0

data modify storage dcf:temp rotation set from entity @s Rotation
execute store result score @s dcf.x_rot run data get storage dcf:temp rotation[1] 10000
execute store result score @s dcf.y_rot run data get storage dcf:temp rotation[0] 10000