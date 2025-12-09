playsound minecraft:block.wood.place block @a ~ ~ ~ 1 1

setblock ~ ~ ~ minecraft:crafter[orientation=up_north]{CustomName:{text:"\u0001",font:"cnk:gui"},lock:{items:"minecraft:barrier",components:{"minecraft:custom_data":{cnk:{lock:true}}}},components:{"minecraft:custom_data":{"cnk":{"wine_rack":true}}}} replace

data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 1350..1800 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1800..-1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1350..-450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -450..450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 450..1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 90

function cnk:wine_rack/macro with storage cnk:temp