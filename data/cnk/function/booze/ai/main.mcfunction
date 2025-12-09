tag @a[distance=..24,gamemode=!spectator,gamemode=!creative] add cnk.booze_target

data remove storage cnk.iris:settings Whitelist
data remove storage cnk.iris:settings Callback
data merge storage cnk.iris:settings {TargetEntities:true,MaxRecursionDepth:50,Blacklist:"#cnk.iris:shape_groups/air"}
execute at @s anchored eyes positioned ^ ^ ^ facing entity @a[tag=cnk.booze_target] eyes run function cnk.iris:get_target
tag @a[tag=cnk.booze_target] remove cnk.booze_target

execute unless data storage cnk.iris:output {TargetType:"ENTITY"} unless entity @p[tag=cnk.iris.targeted_entity] run return fail
data modify storage cnk:temp booze.target set from entity @p[tag=cnk.iris.targeted_entity] Pos

data modify entity @s wander_target set value [I;0,0,0]
data modify entity @s wander_target[0] set from storage cnk:temp booze.target[0]
data modify entity @s wander_target[1] set from storage cnk:temp booze.target[1]
data modify entity @s wander_target[2] set from storage cnk:temp booze.target[2]

execute store result score $attack cnk.dummy run random value 1..100

execute if score @s cnk.attack_count matches 9.. run return run function cnk:booze/teleport/main

execute unless entity @s[tag=cnk.bottle_attack] if score $attack cnk.dummy matches 76.. run tag @s add cnk.bottle_attack
execute store result storage cnk:temp booze.strength float 0.06 run data get storage cnk.iris:output Distance
execute if entity @s[tag=cnk.bottle_attack] anchored eyes facing entity @p[tag=cnk.iris.targeted_entity] eyes run return run function cnk:booze/attack/bottle/main with storage cnk:temp booze

execute if score $attack cnk.dummy matches ..75 anchored eyes facing entity @p[tag=cnk.iris.targeted_entity] eyes run return run function cnk:booze/attack/cork/main