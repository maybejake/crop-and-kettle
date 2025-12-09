data merge entity @s {transformation:{left_rotation:[0f,0.5f,0f,1f],right_rotation:[-1f,0f,0f,1f],scale:[0.55f,0.55f,0.55f],translation:[0.0f,-0.42f,-0.05f]},Tags:["cnk.cutting_board_item"]}
execute if entity @p[tag=cnk.interact_cutting_board,tag=cnk.cutting_board_offhand] run item replace entity @s contents from entity @p[tag=cnk.interact_cutting_board] weapon.offhand
execute if entity @p[tag=cnk.interact_cutting_board,tag=!cnk.cutting_board_offhand] run item replace entity @s contents from entity @p[tag=cnk.interact_cutting_board] weapon.mainhand
execute at @s rotated as @n[type=minecraft:item_display,tag=cnk.cutting_board] run tp @s ~ ~ ~ ~ ~
ride @s mount @n[type=minecraft:item_display,tag=cnk.cutting_board]
playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2

execute if entity @p[tag=cnk.interact_cutting_board,tag=cnk.cutting_board_offhand] run item modify entity @p[tag=cnk.interact_cutting_board] weapon.offhand {"function":"minecraft:set_count","count":-1,"add":true}
execute if entity @p[tag=cnk.interact_cutting_board,tag=!cnk.cutting_board_offhand] run item modify entity @p[tag=cnk.interact_cutting_board] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}