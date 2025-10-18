#> cnk.iris:raycast/loop
#
# Loops forward until an obstacle is hit or until the maximum recursion depth has been reached
#
# @context a marker and the current ray position
# @within cnk.iris:get_target
# @within cnk.iris:raycast/loop

# Test for collisions
execute store success score $block_hit cnk.iris store result score $block_distance cnk.iris run function cnk.iris:raycast/test_for_block
execute store success score $entity_hit cnk.iris store result score $entity_distance cnk.iris run function cnk.iris:raycast/test_for_entity
execute if score $block_hit cnk.iris matches 1 run return run function cnk.iris:raycast/on_hit
execute if score $entity_hit cnk.iris matches 1 run return run function cnk.iris:raycast/on_hit

# Proceed to the next block
execute store result score $to_next_block cnk.iris run function cnk.iris:raycast/find_next_block
scoreboard players operation $total_distance cnk.iris += $to_next_block cnk.iris

# Fail if the maximum recursion depth is reached and nothing was found
scoreboard players add $depth cnk.iris 1
execute if score $depth cnk.iris = $max_depth cnk.iris run tag @s remove cnk.iris.executing
execute if score $depth cnk.iris = $max_depth cnk.iris run return fail

# Otherwise, loop this function at the next block
execute if data storage cnk.iris:data {NextCoordinateChange: "x"} if score $dx cnk.iris matches 0.. positioned ~1 ~ ~ run return run function cnk.iris:raycast/loop
execute if data storage cnk.iris:data {NextCoordinateChange: "x"} if score $dx cnk.iris matches ..-1 positioned ~-1 ~ ~ run return run function cnk.iris:raycast/loop
execute if data storage cnk.iris:data {NextCoordinateChange: "y"} if score $dy cnk.iris matches 0.. positioned ~ ~1 ~ run return run function cnk.iris:raycast/loop
execute if data storage cnk.iris:data {NextCoordinateChange: "y"} if score $dy cnk.iris matches ..-1 positioned ~ ~-1 ~ run return run function cnk.iris:raycast/loop
execute if data storage cnk.iris:data {NextCoordinateChange: "z"} if score $dz cnk.iris matches 0.. positioned ~ ~ ~1 run return run function cnk.iris:raycast/loop
execute if data storage cnk.iris:data {NextCoordinateChange: "z"} if score $dz cnk.iris matches ..-1 positioned ~ ~ ~-1 run return run function cnk.iris:raycast/loop
execute if score $depth cnk.iris < $max_depth cnk.iris at @s run return run function cnk.iris:raycast/loop
