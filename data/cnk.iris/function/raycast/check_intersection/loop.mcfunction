#> cnk.iris:raycast/check_intersection/loop
#
# Tests for ray-box intersections with all axis-aligned bounding boxes of a hitbox
#
# @within cnk.iris:raycast/test_for_block
# @within cnk.iris:raycast/test_for_entity
# @within cnk.iris:raycast/check_intersection/loop
# @reads
#   storage cnk.iris:data Shape
#       A list of axis-aligned bounding boxes of the form {min: [x, y, z], max: [x, y, z]}
# @output
#   Success: 1 if a box is hit, 0 otherwise
#   Result: the distance to the first box that is hit

# Test for intersection with a single bounding box
data modify storage cnk.iris:data Box set from storage cnk.iris:data Shape[-1]
data remove storage cnk.iris:data Shape[-1]
execute store success score $is_hit cnk.iris store result score $distance cnk.iris run function cnk.iris:raycast/check_intersection/ray_box

# If this box is indeed hit before any other this far, remember the targeted box and the targeted face
execute if score $is_hit cnk.iris matches 1 if score $distance cnk.iris >= $min_distance cnk.iris run scoreboard players set $is_hit cnk.iris 0
execute if score $is_hit cnk.iris matches 1 run data modify storage cnk.iris:data TargetedBox set from storage cnk.iris:data Box
execute if score $is_hit cnk.iris matches 1 if score $hits_x_face cnk.iris matches 1 if score $to_aabb cnk.iris = $to_x_face cnk.iris run data modify storage cnk.iris:data TargetedFace set from storage cnk.iris:data Faces[0]
execute if score $is_hit cnk.iris matches 1 if score $hits_y_face cnk.iris matches 1 if score $to_aabb cnk.iris = $to_y_face cnk.iris run data modify storage cnk.iris:data TargetedFace set from storage cnk.iris:data Faces[1]
execute if score $is_hit cnk.iris matches 1 if score $hits_z_face cnk.iris matches 1 if score $to_aabb cnk.iris = $to_z_face cnk.iris run data modify storage cnk.iris:data TargetedFace set from storage cnk.iris:data Faces[2]
execute if score $is_hit cnk.iris matches 1 run scoreboard players operation $min_distance cnk.iris = $distance cnk.iris

# Loop this function until all boxes have been analyzed
execute if data storage cnk.iris:data Shape[-1] run return run function cnk.iris:raycast/check_intersection/loop
execute if score $min_distance cnk.iris matches 2147483647 run return fail
scoreboard players operation $min_distance cnk.iris *= $1000 cnk.iris
return run scoreboard players get $min_distance cnk.iris
