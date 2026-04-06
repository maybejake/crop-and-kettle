#> cnk.iris:raycast/on_hit
#
# Writes all available information about the encountered block or entity
# See cnk.iris:get_target for full documentation
#
# @within cnk.iris:raycast/loop

# Remove the executing tag
tag @s remove cnk.iris.executing

# Write target type (one of BLOCK, ENTITY)
execute if score $block_hit cnk.iris matches 1 if score $entity_hit cnk.iris matches 0 run data modify storage cnk.iris:output TargetType set value "BLOCK"
execute if score $entity_hit cnk.iris matches 1 if score $block_hit cnk.iris matches 0 run data modify storage cnk.iris:output TargetType set value "ENTITY"
execute if score $block_hit cnk.iris matches 1 if score $entity_hit cnk.iris matches 1 if score $block_distance cnk.iris <= $entity_distance cnk.iris run data modify storage cnk.iris:output TargetType set value "BLOCK"
execute if score $block_hit cnk.iris matches 1 if score $entity_hit cnk.iris matches 1 if score $block_distance cnk.iris > $entity_distance cnk.iris run data modify storage cnk.iris:output TargetType set value "ENTITY"

# Write targeted block
execute if data storage cnk.iris:output {TargetType: "BLOCK"} run data modify storage cnk.iris:output TargetedBlock set value [0, 0, 0]
execute if data storage cnk.iris:output {TargetType: "BLOCK"} store result storage cnk.iris:output TargetedBlock[0] int 1 run scoreboard players get $[x] cnk.iris
execute if data storage cnk.iris:output {TargetType: "BLOCK"} store result storage cnk.iris:output TargetedBlock[1] int 1 run scoreboard players get $[y] cnk.iris
execute if data storage cnk.iris:output {TargetType: "BLOCK"} store result storage cnk.iris:output TargetedBlock[2] int 1 run scoreboard players get $[z] cnk.iris
execute if data storage cnk.iris:output {TargetType: "BLOCK"} align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags: ["iris", "cnk.iris.targeted_block"]}

# Write targeted entity
execute if data storage cnk.iris:output {TargetType: "ENTITY"} run data modify storage cnk.iris:output TargetedEntity set from storage cnk.iris:data TargetedBox.entity_id
execute if data storage cnk.iris:output {TargetType: "ENTITY"} run data remove storage cnk.iris:data TargetedBox.entity_id
execute if data storage cnk.iris:output {TargetType: "ENTITY"} run data remove storage cnk.iris:data TargetedFace.entity_id
execute if data storage cnk.iris:output {TargetType: "ENTITY"} store result score $entity_id cnk.iris run data get storage cnk.iris:output TargetedEntity
execute if data storage cnk.iris:output {TargetType: "ENTITY"} as @e[tag=cnk.iris.possible_target] if score @s cnk.iris.id = $entity_id cnk.iris run tag @s add cnk.iris.targeted_entity
execute if data storage cnk.iris:output {TargetType: "ENTITY"} run tag @e remove cnk.iris.possible_target

# Write target position
data modify storage cnk.iris:output TargetPosition.tile set value [0, 0, 0]
execute store result storage cnk.iris:output TargetPosition.tile[0] int 1 run scoreboard players get $[x] cnk.iris
execute store result storage cnk.iris:output TargetPosition.tile[1] int 1 run scoreboard players get $[y] cnk.iris
execute store result storage cnk.iris:output TargetPosition.tile[2] int 1 run scoreboard players get $[z] cnk.iris
data modify storage cnk.iris:output TargetPosition.point set from storage cnk.iris:data TargetPoint
execute store result score ${x} cnk.iris run data get storage cnk.iris:output TargetPosition.point[0] 1000000
execute store result score ${y} cnk.iris run data get storage cnk.iris:output TargetPosition.point[1] 1000000
execute store result score ${z} cnk.iris run data get storage cnk.iris:output TargetPosition.point[2] 1000000

# Write targeted box
data modify storage cnk.iris:output TargetedBox set from storage cnk.iris:data TargetedBox

# Write targeted face
data modify storage cnk.iris:output TargetedFace set from storage cnk.iris:data TargetedFace
execute if data storage cnk.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx cnk.iris matches 0.. run data modify storage cnk.iris:output TargetedFace.Direction set value "WEST"
execute if data storage cnk.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx cnk.iris matches ..-1 run data modify storage cnk.iris:output TargetedFace.Direction set value "EAST"
execute if data storage cnk.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy cnk.iris matches 0.. run data modify storage cnk.iris:output TargetedFace.Direction set value "DOWN"
execute if data storage cnk.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy cnk.iris matches ..-1 run data modify storage cnk.iris:output TargetedFace.Direction set value "UP"
execute if data storage cnk.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz cnk.iris matches 0.. run data modify storage cnk.iris:output TargetedFace.Direction set value "NORTH"
execute if data storage cnk.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz cnk.iris matches ..-1 run data modify storage cnk.iris:output TargetedFace.Direction set value "SOUTH"

# Write total distance
execute if data storage cnk.iris:output {TargetType: "BLOCK"} run scoreboard players operation $total_distance cnk.iris += $block_distance cnk.iris
execute if data storage cnk.iris:output {TargetType: "ENTITY"} run scoreboard players operation $total_distance cnk.iris += $entity_distance cnk.iris
execute store result storage cnk.iris:output Distance double 0.000001 run scoreboard players get $total_distance cnk.iris

# Run callback
execute if data storage cnk.iris:settings Callback run data modify storage cnk.iris:args function set from storage cnk.iris:settings Callback
execute if data storage cnk.iris:settings Callback run function cnk.iris:raycast/macro_functions/callback with storage cnk.iris:args

return run scoreboard players get $total_distance cnk.iris
