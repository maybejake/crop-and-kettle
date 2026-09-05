playsound minecraft:block.iron.place block @a ~ ~ ~ 1 1

setblock ~ ~ ~ minecraft:hopper[facing=down,enabled=false]{CustomName:{translate:gui.cnk.distiller,font:"cnk:gui",color:"white"},TransferCooldown:1000} replace

data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 1350..1800 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1800..-1350 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1350..-450 run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -450..450 run data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 450..1350 run data modify storage cnk:temp rotation set value 90

function cnk:distiller/macro with storage cnk:temp