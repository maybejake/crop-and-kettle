scoreboard players set @s cnk.use_cooldown 5

execute if predicate cnk:scythe/offhand run tag @s add cnk.scythe_offhand
execute if predicate cnk:scythe/mainhand run tag @s add cnk.scythe_mainhand
execute if predicate cnk:scythe/mainhand run tag @s remove cnk.scythe_offhand

data remove storage cnk.iris:settings TargetEntities
data remove storage cnk.iris:settings Whitelist
data remove storage cnk.iris:settings MaxRecursionDepth
data remove storage cnk.iris:settings Callback
data remove storage cnk.iris:settings Blacklist

data merge storage cnk.iris:settings {TargetEntities:false,MaxRecursionDepth:16,Blacklist:"#cnk.iris:shape_groups/air",Whitelist:"#cnk:crops"}

execute store result score $max_distance cnk.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance cnk.dummy run function cnk.iris:get_target
execute if score $distance cnk.dummy <= $max_distance cnk.dummy at @n[type=minecraft:marker, tag=cnk.iris.targeted_block] align xyz positioned ~0.5 ~ ~0.5 run function cnk:scythe/cut

tag @s remove cnk.scythe_mainhand
tag @s remove cnk.scythe_offhand