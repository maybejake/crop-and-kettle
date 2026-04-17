execute unless entity @p[distance=..16,gamemode=!spectator,gamemode=!creative] run return fail
data modify storage cnk:temp booze.target set from entity @p[distance=..16,gamemode=!spectator,gamemode=!creative] Pos

data modify entity @s wander_target set value [I;0,0,0]
data modify entity @s wander_target[0] set from storage cnk:temp booze.target[0]
data modify entity @s wander_target[1] set from storage cnk:temp booze.target[1]
data modify entity @s wander_target[2] set from storage cnk:temp booze.target[2]