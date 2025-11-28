data remove storage cnk:temp pail
data modify storage cnk:temp pail set from block ~ ~ ~ components."minecraft:custom_data".cnk.pail
setblock ~ ~ ~ minecraft:barrier

playsound minecraft:block.copper.place block @a ~ ~ ~ 1 0.7

data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 1350..1800 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp pail.rotation set value 180
execute if score $rotation cnk.dummy matches -1800..-1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp pail.rotation set value 180
execute if score $rotation cnk.dummy matches -1350..-450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp pail.rotation set value -90
execute if score $rotation cnk.dummy matches -450..450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp pail.rotation set value 0
execute if score $rotation cnk.dummy matches 450..1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp pail.rotation set value 90

execute unless data storage cnk:temp pail.liquid run function cnk:pail/macro with storage cnk:temp pail
execute if data storage cnk:temp pail{liquid:"water"} run function cnk:pail/interact/fill/water_color
execute if data storage cnk:temp pail.liquid run function cnk:pail/filled_macro with storage cnk:temp pail
scoreboard players set @n[type=minecraft:item_display,tag=cnk.pail] cnk.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.pail] cnk.hit_timer 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.pail] cnk.max_quantity 32