#> cnk.iris:raycast/find_next_block
#
# Find the coordinates of the next tile that should be traversed by the ray
#
# @within cnk.iris:raycast/loop
# @writes
#   scores $[x] $[y] $[z] cnk.iris
#       The new position
#   scores $last_[x] $last_[y] $last_[z] cnk.iris
#       The previous position
# @output
#   Result: The distance to the next block
#   Success: 1

# Save previous coordinates
scoreboard players operation $last_[x] cnk.iris = $[x] cnk.iris
scoreboard players operation $last_[y] cnk.iris = $[y] cnk.iris
scoreboard players operation $last_[z] cnk.iris = $[z] cnk.iris

# See what distance the ray needs to travel to hit another tile with a different x coordinate
execute if score $dx cnk.iris matches 0.. run scoreboard players set $to_next_x cnk.iris 1000000000
execute if score $dx cnk.iris matches ..-1 run scoreboard players set $to_next_x cnk.iris 0
scoreboard players operation ${x}*1000 cnk.iris = ${x} cnk.iris
scoreboard players operation ${x}*1000 cnk.iris *= $1000 cnk.iris
scoreboard players operation $to_next_x cnk.iris -= ${x}*1000 cnk.iris
scoreboard players operation $to_next_x cnk.iris /= $dx cnk.iris

# See what distance the ray needs to travel to hit another tile with a different y coordinate
execute if score $dy cnk.iris matches 0.. run scoreboard players set $to_next_y cnk.iris 1000000000
execute if score $dy cnk.iris matches ..-1 run scoreboard players set $to_next_y cnk.iris 0
scoreboard players operation ${y}*1000 cnk.iris = ${y} cnk.iris
scoreboard players operation ${y}*1000 cnk.iris *= $1000 cnk.iris
scoreboard players operation $to_next_y cnk.iris -= ${y}*1000 cnk.iris
scoreboard players operation $to_next_y cnk.iris /= $dy cnk.iris

# See what distance the ray needs to travel to hit another tile with a different z coordinate
execute if score $dz cnk.iris matches 0.. run scoreboard players set $to_next_z cnk.iris 1000000000
execute if score $dz cnk.iris matches ..-1 run scoreboard players set $to_next_z cnk.iris 0
scoreboard players operation ${z}*1000 cnk.iris = ${z} cnk.iris
scoreboard players operation ${z}*1000 cnk.iris *= $1000 cnk.iris
scoreboard players operation $to_next_z cnk.iris -= ${z}*1000 cnk.iris
scoreboard players operation $to_next_z cnk.iris /= $dz cnk.iris

# Determine which distance is the shortest
execute if score $to_next_x cnk.iris <= $to_next_y cnk.iris if score $to_next_x cnk.iris <= $to_next_z cnk.iris run data merge storage cnk.iris:data {NextCoordinateChange: "x"}
execute if score $to_next_y cnk.iris <= $to_next_x cnk.iris if score $to_next_y cnk.iris <= $to_next_z cnk.iris run data merge storage cnk.iris:data {NextCoordinateChange: "y"}
execute if score $to_next_z cnk.iris <= $to_next_x cnk.iris if score $to_next_z cnk.iris <= $to_next_y cnk.iris run data merge storage cnk.iris:data {NextCoordinateChange: "z"}

# Calculate the new coordinates when the ray reaches the next tile
execute if data storage cnk.iris:data {NextCoordinateChange: "x"} run data modify storage cnk.iris:args {} merge value {a: "x", b: "y", c: "z"}
execute if data storage cnk.iris:data {NextCoordinateChange: "y"} run data modify storage cnk.iris:args {} merge value {a: "y", b: "z", c: "x"}
execute if data storage cnk.iris:data {NextCoordinateChange: "z"} run data modify storage cnk.iris:args {} merge value {a: "z", b: "x", c: "y"}
function cnk.iris:raycast/macro_functions/find_next_block_aux with storage cnk.iris:args

# Return the added distance
return run scoreboard players operation $to_next_block cnk.iris *= $1000 cnk.iris
