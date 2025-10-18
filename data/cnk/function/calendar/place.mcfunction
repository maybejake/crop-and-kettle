playsound minecraft:entity.item_frame.place block @a ~ ~ ~ 1 1

setblock ~ ~ ~ minecraft:air

data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 1350..1800 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1800..-1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1350..-450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -450..450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 450..1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 90

function cnk:calendar/macro with storage cnk:temp
scoreboard players set @n[type=minecraft:item_display,tag=cnk.cutting_board] cnk.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.cutting_board] cnk.hit_timer 0