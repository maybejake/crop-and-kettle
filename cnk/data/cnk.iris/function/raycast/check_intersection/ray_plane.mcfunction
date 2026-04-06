#> cnk.iris:raycast/check_intersection/ray_plane
#
# Tests for ray-plane intersections with a face
#
# @within cnk.iris:raycast/check_intersection/ray_box
# @reads
#   storage cnk.iris:data Face: compound
#       Direction: string
#           The axis that is perpendicular to this face
#           One of WEST_EAST, UP_DOWN, NORTH_SOUTH
#       min: float[]
#       max: float[]
# @output
#   Success: 1 if the face is hit, 0 otherwise
#   Result: the distance, in mm, before the face is hit

# Save face coordinates
execute store result score $x0 cnk.iris run data get storage cnk.iris:data Face.min[0] 1000000
execute store result score $y0 cnk.iris run data get storage cnk.iris:data Face.min[1] 1000000
execute store result score $z0 cnk.iris run data get storage cnk.iris:data Face.min[2] 1000000
execute store result score $x1 cnk.iris run data get storage cnk.iris:data Face.max[0] 1000000
execute store result score $y1 cnk.iris run data get storage cnk.iris:data Face.max[1] 1000000
execute store result score $z1 cnk.iris run data get storage cnk.iris:data Face.max[2] 1000000

# Get distance (in mm) to the plane, i.e. how long the ray should extend before it hits the plane
# This value should be at most sqrt(3)*1000; if it's more than 2000, we fail (otherwise we risk overflow errors)
execute if data storage cnk.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance cnk.iris = $x0 cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance cnk.iris -= ${x} cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance cnk.iris = $y0 cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance cnk.iris -= ${y} cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance cnk.iris = $z0 cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance cnk.iris -= ${z} cnk.iris
scoreboard players operation $distance cnk.iris *= $1000 cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance cnk.iris /= $dx cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance cnk.iris /= $dy cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance cnk.iris /= $dz cnk.iris
execute if score $distance cnk.iris matches ..-1 run return fail
execute if score $distance cnk.iris matches 2000.. run return fail

# Get x position of the ray/plane intersection
scoreboard players operation $x_intersection cnk.iris = $distance cnk.iris
scoreboard players operation $x_intersection cnk.iris *= $dx cnk.iris
scoreboard players operation $x_intersection cnk.iris /= $1000 cnk.iris
scoreboard players operation $x_intersection cnk.iris += ${x} cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $x_intersection cnk.iris = $x0 cnk.iris

# Get y position of the ray/plane intersection
scoreboard players operation $y_intersection cnk.iris = $distance cnk.iris
scoreboard players operation $y_intersection cnk.iris *= $dy cnk.iris
scoreboard players operation $y_intersection cnk.iris /= $1000 cnk.iris
scoreboard players operation $y_intersection cnk.iris += ${y} cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $y_intersection cnk.iris = $y0 cnk.iris

# Get z position of the ray/plane intersection
scoreboard players operation $z_intersection cnk.iris = $distance cnk.iris
scoreboard players operation $z_intersection cnk.iris *= $dz cnk.iris
scoreboard players operation $z_intersection cnk.iris /= $1000 cnk.iris
scoreboard players operation $z_intersection cnk.iris += ${z} cnk.iris
execute if data storage cnk.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $z_intersection cnk.iris = $z0 cnk.iris

# Save the position of the intersection
data modify storage cnk.iris:data Face.Collision set value [0.0d, 0.0d, 0.0d]
execute store result storage cnk.iris:data Face.Collision[0] double 0.000001 run scoreboard players get $x_intersection cnk.iris
execute store result storage cnk.iris:data Face.Collision[1] double 0.000001 run scoreboard players get $y_intersection cnk.iris
execute store result storage cnk.iris:data Face.Collision[2] double 0.000001 run scoreboard players get $z_intersection cnk.iris

# See if that intersection falls within the face
execute if score $x_intersection cnk.iris >= $x0 cnk.iris if score $x_intersection cnk.iris <= $x1 cnk.iris \
        if score $y_intersection cnk.iris >= $y0 cnk.iris if score $y_intersection cnk.iris <= $y1 cnk.iris \
        if score $z_intersection cnk.iris >= $z0 cnk.iris if score $z_intersection cnk.iris <= $z1 cnk.iris \
        run return run scoreboard players get $distance cnk.iris

return fail
