#> cnk.iris:get_hitbox/entity
#
# Returns the shape of the executing entity
#
# @within cnk.iris:raycast/test_for_entity
# @writes
#	storage cnk.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Get entity dimensions
scoreboard players set $entity_found cnk.iris 0
execute if score $entity_found cnk.iris matches 0 if entity @s[type=#cnk.iris:tree/0] run function cnk.iris:get_hitbox/entity/tree/0
execute if score $entity_found cnk.iris matches 0 if entity @s[type=#cnk.iris:tree/1] run function cnk.iris:get_hitbox/entity/tree/1
execute if score $entity_found cnk.iris matches 0 if entity @s[type=#cnk.iris:tree/2] run function cnk.iris:get_hitbox/entity/tree/2
execute if score $entity_found cnk.iris matches 0 if entity @s[type=#cnk.iris:tree/3] run function cnk.iris:get_hitbox/entity/tree/3
execute if score $entity_found cnk.iris matches 0 if entity @s[type=#cnk.iris:tree/4] run function cnk.iris:get_hitbox/entity/tree/4

# Scale
function cnk.iris:get_hitbox/entity/scale
execute if predicate cnk.iris:baby run scoreboard players operation $entity_width cnk.iris /= $2 cnk.iris
execute if predicate cnk.iris:baby run scoreboard players operation $entity_height cnk.iris /= $2 cnk.iris

# Get the entity's coordinates
scoreboard players operation $entity_[x] cnk.iris = $[x] cnk.iris
scoreboard players operation $entity_[y] cnk.iris = $[y] cnk.iris
scoreboard players operation $entity_[z] cnk.iris = $[z] cnk.iris
scoreboard players operation $entity_{x} cnk.iris = ${x} cnk.iris
scoreboard players operation $entity_{y} cnk.iris = ${y} cnk.iris
scoreboard players operation $entity_{z} cnk.iris = ${z} cnk.iris
execute at @s summon minecraft:marker run function cnk.iris:get_position/get_coordinates
kill @e[type=minecraft:marker, tag=cnk.iris.coordinate_getter]
scoreboard players operation $entity_[x] cnk.iris >< $[x] cnk.iris
scoreboard players operation $entity_[y] cnk.iris >< $[y] cnk.iris
scoreboard players operation $entity_[z] cnk.iris >< $[z] cnk.iris
scoreboard players operation $entity_{x} cnk.iris >< ${x} cnk.iris
scoreboard players operation $entity_{y} cnk.iris >< ${y} cnk.iris
scoreboard players operation $entity_{z} cnk.iris >< ${z} cnk.iris

# Save how many blocks away the entity is from the block origin
scoreboard players operation $entity_dx cnk.iris = $entity_[x] cnk.iris
scoreboard players operation $entity_dx cnk.iris -= $[x] cnk.iris
scoreboard players operation $entity_dx cnk.iris *= $1000000 cnk.iris
scoreboard players operation $entity_dx cnk.iris += $entity_{x} cnk.iris
scoreboard players operation $entity_dy cnk.iris = $entity_[y] cnk.iris
scoreboard players operation $entity_dy cnk.iris -= $[y] cnk.iris
scoreboard players operation $entity_dy cnk.iris *= $1000000 cnk.iris
scoreboard players operation $entity_dy cnk.iris += $entity_{y} cnk.iris
scoreboard players operation $entity_dz cnk.iris = $entity_[z] cnk.iris
scoreboard players operation $entity_dz cnk.iris -= $[z] cnk.iris
scoreboard players operation $entity_dz cnk.iris *= $1000000 cnk.iris
scoreboard players operation $entity_dz cnk.iris += $entity_{z} cnk.iris

# Get the coordinates of the bounding box
scoreboard players operation $entity_half_width cnk.iris = $entity_width cnk.iris
scoreboard players operation $entity_half_width cnk.iris /= $2 cnk.iris
scoreboard players operation $entity_x0 cnk.iris = $entity_dx cnk.iris
scoreboard players operation $entity_x0 cnk.iris -= $entity_half_width cnk.iris
execute if score $entity_x0 cnk.iris matches ..0 run scoreboard players set $entity_x0 cnk.iris 0
scoreboard players operation $entity_y0 cnk.iris = $entity_dy cnk.iris
execute if score $entity_y0 cnk.iris matches ..0 run scoreboard players set $entity_y0 cnk.iris 0
scoreboard players operation $entity_z0 cnk.iris = $entity_dz cnk.iris
scoreboard players operation $entity_z0 cnk.iris -= $entity_half_width cnk.iris
execute if score $entity_z0 cnk.iris matches ..0 run scoreboard players set $entity_z0 cnk.iris 0
scoreboard players operation $entity_x1 cnk.iris = $entity_dx cnk.iris
scoreboard players operation $entity_x1 cnk.iris += $entity_half_width cnk.iris
execute if score $entity_x1 cnk.iris matches 1000000.. run scoreboard players set $entity_x1 cnk.iris 1000000
scoreboard players operation $entity_y1 cnk.iris = $entity_dy cnk.iris
scoreboard players operation $entity_y1 cnk.iris += $entity_height cnk.iris
execute if score $entity_y1 cnk.iris matches 1000000.. run scoreboard players set $entity_y1 cnk.iris 1000000
scoreboard players operation $entity_z1 cnk.iris = $entity_dz cnk.iris
scoreboard players operation $entity_z1 cnk.iris += $entity_half_width cnk.iris
execute if score $entity_z1 cnk.iris matches 1000000.. run scoreboard players set $entity_z1 cnk.iris 1000000

# Store these coordinates to storage
data modify storage cnk.iris:data Shape append value {type: "ENTITY", min: [0.0, 0.0, 0.0], max: [0.0, 0.0, 0.0]}
execute store result storage cnk.iris:data Shape[-1].min[0] double 0.000001 run scoreboard players get $entity_x0 cnk.iris
execute store result storage cnk.iris:data Shape[-1].min[1] double 0.000001 run scoreboard players get $entity_y0 cnk.iris
execute store result storage cnk.iris:data Shape[-1].min[2] double 0.000001 run scoreboard players get $entity_z0 cnk.iris
execute store result storage cnk.iris:data Shape[-1].max[0] double 0.000001 run scoreboard players get $entity_x1 cnk.iris
execute store result storage cnk.iris:data Shape[-1].max[1] double 0.000001 run scoreboard players get $entity_y1 cnk.iris
execute store result storage cnk.iris:data Shape[-1].max[2] double 0.000001 run scoreboard players get $entity_z1 cnk.iris

# Special case for item frames and paintings which are annoying
#execute if score $entity_found cnk.iris matches 0 store success score $entity_found cnk.iris store success score $entity.is_item_frame cnk.iris if entity @s[type=#cnk.iris:item_frames]
#execute if score $entity.is_item_frame cnk.iris matches 1 run function cnk.iris:get_hitbox/entity/item_frame

# Give this entity a tag and an ID, and store the ID in the hitbox
tag @s add cnk.iris.possible_target
scoreboard players operation @s cnk.iris.id = $max_entity_id cnk.iris.id
execute store result storage cnk.iris:data Shape[-1].entity_id int 1 run scoreboard players get @s cnk.iris.id
scoreboard players add $max_entity_id cnk.iris.id 1
