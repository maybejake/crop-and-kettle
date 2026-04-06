#spin
execute store result score $rotation cnk.dummy run data get entity @s Rotation[0]
scoreboard players add $rotation cnk.dummy 10
execute store result entity @s Rotation[0] int 1 run scoreboard players get $rotation cnk.dummy

function cnk:booze/wibble
function cnk:booze/wobble