data remove storage cnk.iris:settings Callback
data merge storage cnk.iris:settings {TargetEntities:false,Whitelist:"minecraft:crafter",MaxRecursionDepth:16,Blacklist:"#cnk.iris:shape_groups/air"}
execute store result score $max_distance cnk.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance cnk.dummy run function cnk.iris:get_target

tag @s add cnk.sprite_use
execute if score $distance cnk.dummy <= $max_distance cnk.dummy at @n[type=minecraft:marker, tag=cnk.iris.targeted_block] run function cnk:wine_rack/interact/sprite/find_wine_rack
tag @s remove cnk.sprite_use