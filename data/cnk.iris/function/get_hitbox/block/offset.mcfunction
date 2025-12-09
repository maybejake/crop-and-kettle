#> cnk.iris:get_hitbox/block/offset
#
# Computes seeded block offset for e.g. flowers, assuming the shape comprises a single box
#
# @within cnk.iris:get_hitbox/block
# @writes
#	storage cnk.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Compute seed(x, y, z)
scoreboard players operation $a cnk.iris = $[x] cnk.iris
scoreboard players operation $a cnk.iris *= $3129871 cnk.iris
scoreboard players operation $b cnk.iris = $[z] cnk.iris
scoreboard players operation $b cnk.iris *= $116129781 cnk.iris
execute store result score $a^b cnk.iris run function cnk.iris:get_hitbox/block/xor

scoreboard players operation $(a^b)² cnk.iris = $a^b cnk.iris
scoreboard players operation $(a^b)² cnk.iris *= $a^b cnk.iris
scoreboard players operation $11*(a^b) cnk.iris = $a^b cnk.iris
scoreboard players operation $11*(a^b) cnk.iris *= $11 cnk.iris

scoreboard players operation $seed cnk.iris = $(a^b)² cnk.iris
scoreboard players operation $seed cnk.iris *= $42317861 cnk.iris
scoreboard players operation $seed cnk.iris += $11*(a^b) cnk.iris
scoreboard players operation $seed cnk.iris /= $65536 cnk.iris

# Compute offsets
scoreboard players operation $x_offset cnk.iris = $seed cnk.iris
scoreboard players operation $x_offset cnk.iris %= $16 cnk.iris
scoreboard players operation $x_offset cnk.iris *= $33333 cnk.iris

scoreboard players operation $z_offset cnk.iris = $seed cnk.iris
scoreboard players operation $z_offset cnk.iris /= $256 cnk.iris
scoreboard players operation $z_offset cnk.iris %= $16 cnk.iris
scoreboard players operation $z_offset cnk.iris *= $33333 cnk.iris

# Adjust/clamp for pointed dripstone blocks
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $x_offset cnk.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $z_offset cnk.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset cnk.iris matches ..0 run scoreboard players set $x_offset cnk.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset cnk.iris matches 250000.. run scoreboard players set $x_offset cnk.iris 250000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset cnk.iris matches ..0 run scoreboard players set $z_offset cnk.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset cnk.iris matches 250000.. run scoreboard players set $z_offset cnk.iris 250000

# Apply offsets to the generated shape
execute store result score $min_x cnk.iris run data get storage cnk.iris:data Shape[0].min[0] 1000000
execute store result storage cnk.iris:data Shape[0].min[0] double 0.000001 run scoreboard players operation $min_x cnk.iris += $x_offset cnk.iris
execute store result score $min_z cnk.iris run data get storage cnk.iris:data Shape[0].min[2] 1000000
execute store result storage cnk.iris:data Shape[0].min[2] double 0.000001 run scoreboard players operation $min_z cnk.iris += $z_offset cnk.iris
execute store result score $max_x cnk.iris run data get storage cnk.iris:data Shape[0].max[0] 1000000
execute store result storage cnk.iris:data Shape[0].max[0] double 0.000001 run scoreboard players operation $max_x cnk.iris += $x_offset cnk.iris
execute store result score $max_z cnk.iris run data get storage cnk.iris:data Shape[0].max[2] 1000000
execute store result storage cnk.iris:data Shape[0].max[2] double 0.000001 run scoreboard players operation $max_z cnk.iris += $z_offset cnk.iris
