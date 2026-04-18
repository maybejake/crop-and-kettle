data remove storage cnk.iris:settings TargetEntities
data remove storage cnk.iris:settings Whitelist
data remove storage cnk.iris:settings MaxRecursionDepth
data remove storage cnk.iris:settings Callback
data remove storage cnk.iris:settings Blacklist

data merge storage cnk.iris:settings {TargetEntities:false,MaxRecursionDepth:16,Blacklist:"#cnk.iris:shape_groups/air",Whitelist:"minecraft:hopper"}

execute store result score $max_distance cnk.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance cnk.dummy run function cnk.iris:get_target
execute if score $distance cnk.dummy <= $max_distance cnk.dummy at @n[type=minecraft:marker, tag=cnk.iris.targeted_block] align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:item_display,tag=cnk.distiller,distance=..0.1] run return run function cnk:spirit_sprite/use/distiller

execute at @s anchored eyes positioned ^ ^ ^2 run function cnk:spirit_sprite/summon
execute at @s anchored eyes positioned ^ ^ ^2 run particle minecraft:effect{color:9447257} ~ ~ ~ 0.2 0.2 0.2 0.1 20 force