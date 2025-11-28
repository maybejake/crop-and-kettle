#> cnk.iris:raycast/check_intersection/ray_box
#
# Converts an axis-aligned bounding box into three faces (the other tree faces are occluded) and tests for ray-plane intersections with any of them
#
# @within cnk.iris:raycast/check_intersection/loop
# @reads
#   storage cnk.iris:data Box
#       min: float[]
#           The min corner of the box, as three coordinates between 0 and 1
#       max: float[]
#           The max corner of the box, as three coordinates between 0 and 1
# @output
#   Success: 1 if any face of the box is hit, 0 otherwise
#   Result: the distance, in mm, before the first face that is hit

# Decompose the box as three faces
data modify storage cnk.iris:data Faces set value [{Direction: "WEST_EAST"}, {Direction: "UP_DOWN"}, {Direction: "NORTH_SOUTH"}]
data modify storage cnk.iris:data Faces[0] merge from storage cnk.iris:data Box
execute if score $dx cnk.iris matches 0.. run data modify storage cnk.iris:data Faces[0].max[0] set from storage cnk.iris:data Box.min[0]
execute if score $dx cnk.iris matches ..-1 run data modify storage cnk.iris:data Faces[0].min[0] set from storage cnk.iris:data Box.max[0]
data modify storage cnk.iris:data Faces[1] merge from storage cnk.iris:data Box
execute if score $dy cnk.iris matches 0.. run data modify storage cnk.iris:data Faces[1].max[1] set from storage cnk.iris:data Box.min[1]
execute if score $dy cnk.iris matches ..-1 run data modify storage cnk.iris:data Faces[1].min[1] set from storage cnk.iris:data Box.max[1]
data modify storage cnk.iris:data Faces[2] merge from storage cnk.iris:data Box
execute if score $dz cnk.iris matches 0.. run data modify storage cnk.iris:data Faces[2].max[2] set from storage cnk.iris:data Box.min[2]
execute if score $dz cnk.iris matches ..-1 run data modify storage cnk.iris:data Faces[2].min[2] set from storage cnk.iris:data Box.max[2]

# Check for ray-plane intersections
data modify storage cnk.iris:data Face set from storage cnk.iris:data Faces[0]
execute store success score $hits_x_face cnk.iris store result score $to_x_face cnk.iris run function cnk.iris:raycast/check_intersection/ray_plane
execute if score $hits_x_face cnk.iris matches 0 run scoreboard players set $to_x_face cnk.iris 2147483647
execute if score $hits_x_face cnk.iris matches 1 run data modify storage cnk.iris:data TargetPoint set from storage cnk.iris:data Face.Collision

data modify storage cnk.iris:data Face set from storage cnk.iris:data Faces[1]
execute store success score $hits_y_face cnk.iris store result score $to_y_face cnk.iris run function cnk.iris:raycast/check_intersection/ray_plane
execute if score $hits_y_face cnk.iris matches 0 run scoreboard players set $to_y_face cnk.iris 2147483647
execute if score $hits_y_face cnk.iris matches 1 if score $to_y_face cnk.iris < $to_x_face cnk.iris run data modify storage cnk.iris:data TargetPoint set from storage cnk.iris:data Face.Collision

data modify storage cnk.iris:data Face set from storage cnk.iris:data Faces[2]
execute store success score $hits_z_face cnk.iris store result score $to_z_face cnk.iris run function cnk.iris:raycast/check_intersection/ray_plane
execute if score $hits_z_face cnk.iris matches 0 run scoreboard players set $to_z_face cnk.iris 2147483647
execute if score $hits_z_face cnk.iris matches 1 if score $to_z_face cnk.iris < $to_x_face cnk.iris if score $to_z_face cnk.iris < $to_y_face cnk.iris run data modify storage cnk.iris:data TargetPoint set from storage cnk.iris:data Face.Collision

# If no face was hit, fail; otherwise, return the shortest distance to any face that is hit
execute if score $hits_x_face cnk.iris matches 0 if score $hits_y_face cnk.iris matches 0 if score $hits_z_face cnk.iris matches 0 run return fail
scoreboard players operation $to_aabb cnk.iris = $to_x_face cnk.iris
scoreboard players operation $to_aabb cnk.iris < $to_y_face cnk.iris
scoreboard players operation $to_aabb cnk.iris < $to_z_face cnk.iris
return run scoreboard players get $to_aabb cnk.iris
