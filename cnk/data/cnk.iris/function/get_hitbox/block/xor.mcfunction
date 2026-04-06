#> cnk.iris:get_hitbox/block/xor
#
# Compute bitwise XOR (^) on two scores
#
# @within cnk.iris:get_hitbox/block/offset
# @reads
#   score $a cnk.iris
#       The first operand
#   score $b cnk.iris
#       The second operand
# @output
#   Return: The result of the XOR operation on both operands
#   Success: 1

scoreboard players operation $a^b cnk.iris = $a cnk.iris
scoreboard players operation $a^b cnk.iris += $b cnk.iris

# Compute a&b
scoreboard players set $a&b cnk.iris 0
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players set $a&b cnk.iris -2147483648
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 1073741824
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 536870912
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 268435456
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 134217728
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 67108864
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 33554432
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 16777216
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 8388608
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 4194304
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 2097152
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 1048576
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 524288
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 262144
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 131072
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 65536
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 32768
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 16384
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 8192
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 4096
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 2048
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 1024
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 512
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 256
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 128
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 64
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 32
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 16
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 8
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 4
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 2
scoreboard players operation $a cnk.iris += $a cnk.iris
scoreboard players operation $b cnk.iris += $b cnk.iris
execute if score $a cnk.iris matches ..-1 if score $b cnk.iris matches ..-1 run scoreboard players add $a&b cnk.iris 1

# Compute a^b = a+b-2(a&b)
scoreboard players operation $a^b cnk.iris -= $a&b cnk.iris
scoreboard players operation $a^b cnk.iris -= $a&b cnk.iris

# Return the result
return run scoreboard players get $a^b cnk.iris
