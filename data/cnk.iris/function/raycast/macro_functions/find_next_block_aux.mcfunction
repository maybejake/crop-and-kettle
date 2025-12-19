#> cnk.iris:raycast/find_next_block_aux
#
# Auxiliary command for running macros from find_next_block
# Note: because there are only three possible input value combinations, they should all be cached and so the overhead from runtime compilation of macro lines should be minimal
#
# @within cnk.iris:raycast/find_next_block
# @input
#   a: The axis along which we are moving (for example, if the ray moves one tile up, this is 'y'). One of 'x', 'y', or 'z'.
#   b: Another axis. One of 'x', 'y', or 'z'.
#   c: The third axis. One of 'x', 'y', or 'z'.

$scoreboard players operation $to_next_block cnk.iris = $to_next_$(a) cnk.iris

# Find the exact position of the ray when it leaves the current tile
$execute if score $d$(a) cnk.iris matches 0.. run scoreboard players add $[$(a)] cnk.iris 1
$execute if score $d$(a) cnk.iris matches 0.. run scoreboard players set ${$(a)} cnk.iris 0
$execute if score $d$(a) cnk.iris matches ..-1 run scoreboard players remove $[$(a)] cnk.iris 1
$execute if score $d$(a) cnk.iris matches ..-1 run scoreboard players set ${$(a)} cnk.iris 1000000

# Calculate new position on the second axis
scoreboard players operation $delta cnk.iris = $to_next_block cnk.iris
$scoreboard players operation $delta cnk.iris *= $d$(b) cnk.iris
scoreboard players operation $delta cnk.iris /= $1000 cnk.iris
$scoreboard players operation ${$(b)} cnk.iris += $delta cnk.iris

# Calculate new position on the third axis
scoreboard players operation $delta cnk.iris = $to_next_block cnk.iris
$scoreboard players operation $delta cnk.iris *= $d$(c) cnk.iris
scoreboard players operation $delta cnk.iris /= $1000 cnk.iris
$scoreboard players operation ${$(c)} cnk.iris += $delta cnk.iris
