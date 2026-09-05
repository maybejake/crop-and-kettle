playsound minecraft:block.iron.place block @a ~ ~ ~ 1 2

setblock ~ ~ ~ minecraft:barrier replace

data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 1350..1800 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1800..-1350 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1350..-450 run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -450..450 run data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 450..1350 run data modify storage cnk:temp rotation set value 90

function cnk:basin/macro with storage cnk:temp