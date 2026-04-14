setblock ~ ~ ~ minecraft:air

playsound minecraft:block.grass.place block @a ~ ~ ~ 1 2

data modify storage cnk:temp rotation set value 0
execute store result storage cnk:temp rotation int 0.1 run scoreboard players get $rotation cnk.dummy

function cnk:cornucopia/macro with storage cnk:temp