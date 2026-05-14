advancement revoke @s only cnk:interact_cooking_pot

data remove storage cnk.iris:settings Callback
data merge storage cnk.iris:settings {TargetEntities:false,Whitelist:"minecraft:hopper",MaxRecursionDepth:16,Blacklist:"#cnk.iris:shape_groups/air"}
execute store result score $max_distance cnk.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance cnk.dummy run function cnk.iris:get_target
execute if score $distance cnk.dummy <= $max_distance cnk.dummy at @n[type=minecraft:marker, tag=cnk.iris.targeted_block] if entity @n[type=minecraft:item_display,tag=cnk.cooking_pot,distance=..0.1] run function cnk:cooking_pot/interact/store