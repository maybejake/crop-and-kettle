data modify storage cnk:temp components set from storage cnk:temp block.data.components

playsound block.bamboo.place block @a ~ ~ ~ 1 1.5

data modify storage cnk:temp rotation set value 0
execute store result storage cnk:temp rotation int 0.1 run scoreboard players get $rotation cnk.dummy

function cnk:picnic_basket/macro with storage cnk:temp