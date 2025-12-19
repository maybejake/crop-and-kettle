execute if entity @s[tag=cnk.north] if block ~ ~ ~ #minecraft:doors[facing=north] run tag @s add cnk.back_door
execute if entity @s[tag=cnk.north] if block ~ ~ ~ #minecraft:doors[facing=south] run tag @s add cnk.front_door

execute if entity @s[tag=cnk.east] if block ~ ~ ~ #minecraft:doors[facing=east] run tag @s add cnk.back_door
execute if entity @s[tag=cnk.east] if block ~ ~ ~ #minecraft:doors[facing=west] run tag @s add cnk.front_door

execute if entity @s[tag=cnk.south] if block ~ ~ ~ #minecraft:doors[facing=south] run tag @s add cnk.back_door
execute if entity @s[tag=cnk.south] if block ~ ~ ~ #minecraft:doors[facing=north] run tag @s add cnk.front_door

execute if entity @s[tag=cnk.west] if block ~ ~ ~ #minecraft:doors[facing=west] run tag @s add cnk.back_door
execute if entity @s[tag=cnk.west] if block ~ ~ ~ #minecraft:doors[facing=east] run tag @s add cnk.front_door

execute if entity @s[tag=cnk.back_door] at @s run tp @s ^ ^ ^-0.81

tag @s[tag=cnk.front_door] add cnk.wreath_door
tag @s[tag=cnk.back_door] add cnk.wreath_door
execute if entity @s[tag=cnk.wreath_door] at @s run playsound minecraft:block.azalea_leaves.place block @a ~ ~ ~ 1 1
execute if entity @s[tag=cnk.wreath_door] at @s run function cnk:wreath/door/marker