setblock ~ ~ ~ minecraft:air

data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 1350..1800 align xyz run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1800..-1350 align xyz run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1350..-450 align xyz run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -450..450 align xyz run data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 450..1350 align xyz run data modify storage cnk:temp rotation set value 90

execute if score $rotation cnk.dummy matches 1350..1800 align xyz run data modify storage cnk:temp direction set value "north"
execute if score $rotation cnk.dummy matches -1800..-1350 align xyz run data modify storage cnk:temp direction set value "north"
execute if score $rotation cnk.dummy matches -1350..-450 align xyz run data modify storage cnk:temp direction set value "east"
execute if score $rotation cnk.dummy matches -450..450 align xyz run data modify storage cnk:temp direction set value "south"
execute if score $rotation cnk.dummy matches 450..1350 align xyz run data modify storage cnk:temp direction set value "west"


function cnk:wreath/macro with storage cnk:temp
execute align xyz positioned ~0.5 ~0.1 ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.wreath,distance=..0.1] cnk.hit_count 0
execute align xyz positioned ~0.5 ~0.1 ~0.5 run scoreboard players set @n[type=minecraft:item_display,tag=cnk.wreath,distance=..0.1] cnk.hit_timer 0

execute align xyz positioned ~0.5 ~0.1 ~0.5 run execute as @n[type=minecraft:item_display,tag=cnk.wreath,distance=..0.1] at @s positioned ^ ^ ^-1 if block ~ ~ ~ #minecraft:doors[open=false] run return run function cnk:wreath/door/main
playsound minecraft:block.azalea_leaves.place block @a ~ ~ ~ 1 1