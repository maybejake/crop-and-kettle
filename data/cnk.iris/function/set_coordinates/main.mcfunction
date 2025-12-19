#> cnk.iris:set_coordinates
#
# Teleports the executing entity at a given position from six scores.
# Meant to be executed as the ray marker after raycasting, scores are then set to the player's targeted position:
#    execute as @p at @s anchored eyes positioned ^ ^ ^ run function cnk.iris:get_target
#    execute as @e[type=minecraft:marker, tag=cnk.iris.ray] run function cnk.iris:set_coordinates
#
# @public
# @context any entity
# @input
#   score $[x] cnk.iris
#       The integer value of the new X position
#   score ${x} cnk.iris
#       The fractional value of the new X position, as a number between 0 and 1000000

execute unless entity @s run return fail

# Clamp to 0..999999
execute if score ${x} cnk.iris matches ..0 run scoreboard players set ${x} cnk.iris 0
execute if score ${y} cnk.iris matches ..0 run scoreboard players set ${y} cnk.iris 0
execute if score ${z} cnk.iris matches ..0 run scoreboard players set ${z} cnk.iris 0
execute if score ${x} cnk.iris matches 1000000.. run scoreboard players set ${x} cnk.iris 999999
execute if score ${y} cnk.iris matches 1000000.. run scoreboard players set ${y} cnk.iris 999999
execute if score ${z} cnk.iris matches 1000000.. run scoreboard players set ${z} cnk.iris 999999

# Get integer coordinates for the first teleport command (absolute coordinates)
execute store result storage cnk.iris:args x int 1 run scoreboard players get $[x] cnk.iris
execute store result storage cnk.iris:args y int 1 run scoreboard players get $[y] cnk.iris
execute store result storage cnk.iris:args z int 1 run scoreboard players get $[z] cnk.iris

# Get fractional coordinates for the second teleport command (relative coordinates)
execute store result storage cnk.iris:args value int 1 run scoreboard players get ${x} cnk.iris
function cnk.iris:set_coordinates/pad_with_zeros with storage cnk.iris:args
data modify storage cnk.iris:args dx set string storage cnk.iris:data String -6

execute store result storage cnk.iris:args value int 1 run scoreboard players get ${y} cnk.iris
function cnk.iris:set_coordinates/pad_with_zeros with storage cnk.iris:args
data modify storage cnk.iris:args dy set string storage cnk.iris:data String -6

execute store result storage cnk.iris:args value int 1 run scoreboard players get ${z} cnk.iris
function cnk.iris:set_coordinates/pad_with_zeros with storage cnk.iris:args
data modify storage cnk.iris:args dz set string storage cnk.iris:data String -6

# Generate the two teleport commands
function cnk.iris:set_coordinates/teleport with storage cnk.iris:args
