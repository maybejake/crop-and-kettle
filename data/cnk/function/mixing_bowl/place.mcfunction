setblock ~ ~ ~ minecraft:air

playsound minecraft:block.bamboo_wood.place block @a ~ ~ ~ 1 2

data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 1350..1800 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -1800..-1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -1350..-450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches -450..450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 90
execute if score $rotation cnk.dummy matches 450..1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180

function cnk:mixing_bowl/macro with storage cnk:temp
scoreboard players set @n[type=minecraft:item_display,tag=cnk.mixing_bowl] cnk.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.mixing_bowl] cnk.hit_timer 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.mixing_bowl] cnk.item_count 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.mixing_bowl] cnk.mix_time 0