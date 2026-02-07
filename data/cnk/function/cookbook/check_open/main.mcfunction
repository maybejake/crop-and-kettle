#movement check
execute unless entity @s[scores={cnk.walk=0,cnk.sprint=0,cnk.sneak=0,cnk.jump=0}] run return run tag @s remove cnk.book_open

#camera check
execute rotated as @s positioned ~ -100 ~ summon minecraft:marker run function cnk:cookbook/check_open/marker
execute store result score $x_rot cnk.dummy run data get storage cnk:temp cookbook_open_check.rotation[1] 10000
execute store result score $y_rot cnk.dummy run data get storage cnk:temp cookbook_open_check.rotation[0] 10000
execute unless score @s cnk.x_rot = $x_rot cnk.dummy unless score @s cnk.y_rot = $y_rot cnk.dummy run return run tag @s remove cnk.book_open

scoreboard players set $cookbook_open_check cnk.dummy 1