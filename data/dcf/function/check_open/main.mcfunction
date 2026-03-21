#movement check
execute unless entity @s[scores={dcf.walk=0,dcf.sprint=0,dcf.sneak=0,dcf.jump=0}] run return run tag @s remove dcf.open

#camera check
execute rotated as @s positioned ~ -100 ~ summon minecraft:marker run function dcf:check_open/marker
execute store result score $x_rot dcf.dummy run data get storage dcf:temp rotation[1] 10000
execute store result score $y_rot dcf.dummy run data get storage dcf:temp rotation[0] 10000
execute unless score @s dcf.x_rot = $x_rot dcf.dummy unless score @s dcf.y_rot = $y_rot dcf.dummy run return run tag @s remove dcf.open

scoreboard players set $open_check dcf.dummy 1