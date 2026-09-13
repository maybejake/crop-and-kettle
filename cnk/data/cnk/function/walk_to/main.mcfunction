execute summon minecraft:marker run function cnk:walk_to/get_position

data modify entity @s wander_target set value [I;0,0,0]
data modify entity @s wander_target[0] set from storage cnk:temp walk_to.pos[0]
data modify entity @s wander_target[1] set from storage cnk:temp walk_to.pos[1]
data modify entity @s wander_target[2] set from storage cnk:temp walk_to.pos[2]