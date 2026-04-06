advancement revoke @s only cnk:interact_doughboy

tag @s add cnk.doughboy_interact

data remove storage cnk.iris:settings TargetEntities
data remove storage cnk.iris:settings Whitelist
data remove storage cnk.iris:settings MaxRecursionDepth
data remove storage cnk.iris:settings Callback
data remove storage cnk.iris:settings Blacklist

data merge storage cnk.iris:settings {TargetEntities:true,MaxRecursionDepth:16,Blacklist:"#cnk.iris:shape_groups/air"}

execute store result score $max_distance cnk.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance cnk.dummy run function cnk.iris:get_target
execute if score $distance cnk.dummy <= $max_distance cnk.dummy as @n[type=minecraft:wandering_trader, tag=cnk.iris.targeted_entity] at @s run function cnk:doughboy/interact/found

tag @s remove cnk.doughboy_interact