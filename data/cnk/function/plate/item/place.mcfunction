scoreboard players add $global cnk.item_count 1
execute if score $global cnk.item_count matches 1 run data merge entity @s {Tags:["cnk.plate_item","cnk.plate_1"]}
execute if score $global cnk.item_count matches 2 run data merge entity @s {Tags:["cnk.plate_item","cnk.plate_2"]}
execute if score $global cnk.item_count matches 3 run data merge entity @s {Tags:["cnk.plate_item","cnk.plate_3"]}
execute if score $global cnk.item_count matches 4 run data merge entity @s {Tags:["cnk.plate_item","cnk.plate_4"]}
execute if score $global cnk.item_count matches 5 run data merge entity @s {Tags:["cnk.plate_item","cnk.plate_5"]}

item replace entity @s contents from entity @p[tag=cnk.interact_plate] weapon.mainhand
execute at @s rotated as @n[type=minecraft:item_display,tag=cnk.plate] run tp @s ~ ~ ~ ~ ~
ride @s mount @n[type=minecraft:item_display,tag=cnk.plate]
playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2

item modify entity @p[tag=cnk.interact_plate] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
execute if entity @p[tag=cnk.interact_plate,predicate=cnk:sneaking] run tag @s add cnk.no_model