#> cnk.iris:get_position/get_coordinates
#
# Gets the coordinates of the executing entity
#
# @context A marker
# @within cnk.iris:get_position/main
# @within cnk.iris:get_hitbox/entity

tag @s add cnk.iris.coordinate_getter

# Get integer coordinates
data modify storage cnk.iris:data Pos set from entity @s Pos
execute store result score $[x] cnk.iris store result storage cnk.iris:args x int -1 run data get storage cnk.iris:data Pos[0]
execute store result score $[y] cnk.iris store result storage cnk.iris:args y int -1 run data get storage cnk.iris:data Pos[1]
execute store result score $[z] cnk.iris store result storage cnk.iris:args z int -1 run data get storage cnk.iris:data Pos[2]

# Get fractional coordinates
function cnk.iris:get_position/teleport with storage cnk.iris:args
data modify storage cnk.iris:data Pos set from entity @s Pos
execute store result score ${x} cnk.iris run data get storage cnk.iris:data Pos[0] 1000000
execute store result score ${y} cnk.iris run data get storage cnk.iris:data Pos[1] 1000000
execute store result score ${z} cnk.iris run data get storage cnk.iris:data Pos[2] 1000000

# Clean up
data remove storage cnk.iris:data Pos
