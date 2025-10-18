#> cnk.iris:get_position/get_rotation
#
# Returns the context rotation as a vector
#
# @context A marker and a rotation
# @within cnk.iris:get_position/main

execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1000000
data modify storage cnk.iris:data Pos set from entity @s Pos
execute store result score $dx cnk.iris run data get storage cnk.iris:data Pos[0]
execute store result score $dy cnk.iris run data get storage cnk.iris:data Pos[1]
execute store result score $dz cnk.iris run data get storage cnk.iris:data Pos[2]
