setblock ~ ~ ~ minecraft:air

playsound minecraft:block.glass.place block @a ~ ~ ~ 1 1.3

data modify storage cnk:temp rotation set value 0
execute store result storage cnk:temp rotation int 0.1 run scoreboard players get $rotation cnk.dummy

function cnk:hollow_vessel/macro with storage cnk:temp
scoreboard players set @n[type=minecraft:item_display,tag=cnk.hollow_vessel] cnk.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.hollow_vessel] cnk.hit_timer 0