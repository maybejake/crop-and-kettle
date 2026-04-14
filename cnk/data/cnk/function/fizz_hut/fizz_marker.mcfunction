function cnk:fizz/summon

# Construct home pos
data modify storage cnk:temp fizz_hut.position set from entity @s Pos
data modify storage cnk:temp fizz_hut.home_pos set value [I; 0, 0, 0]
execute store result storage cnk:temp fizz_hut.home_pos[0] int 1 run data get storage cnk:temp fizz_hut.position[0]
execute store result storage cnk:temp fizz_hut.home_pos[1] int 1 run data get storage cnk:temp fizz_hut.position[1]
execute store result storage cnk:temp fizz_hut.home_pos[2] int 1 run data get storage cnk:temp fizz_hut.position[2]

# Handle home data
data modify entity @n[type=minecraft:wandering_trader,tag=cnk.fizz_trader,distance=..1] home_radius set value 15
data modify entity @n[type=minecraft:wandering_trader,tag=cnk.fizz_trader,distance=..1] home_pos set from storage cnk:temp fizz_hut.home_pos