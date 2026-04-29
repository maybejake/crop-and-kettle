execute store result score $chance cnk.dummy run random value 1..10
execute if score $chance cnk.dummy matches 6.. run return fail

data remove storage cnk.iris:settings Callback
data merge storage cnk.iris:settings {TargetEntities:false,Whitelist:"minecraft:composter",MaxRecursionDepth:16,Blacklist:"#cnk.iris:shape_groups/air"}
execute store result score $max_distance cnk.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance cnk.dummy run function cnk.iris:get_target
return 1