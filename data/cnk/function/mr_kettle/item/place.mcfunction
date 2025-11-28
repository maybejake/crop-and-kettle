scoreboard players add $global cnk.item_count 1
execute if score $global cnk.item_count matches ..1 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,-0.1f,1f],right_rotation:[0.0f,0.0f,0.0f,1f],scale:[0.4f,0.4f,0.4f],translation:[-0.37f,-0.03f,-0.045f]},Tags:["cnk.mr_kettle_item","cnk.mr_kettle_1"]}
execute if score $global cnk.item_count matches 2.. run data merge entity @s {transformation:{left_rotation:[-0.1f,0.9f,-0.05f,1f],right_rotation:[-0.2f,1.0f,0.0f,1f],scale:[0.4f,0.4f,0.4f],translation:[0.37f,-0.03f,-0.025f]},Tags:["cnk.mr_kettle_item","cnk.mr_kettle_2"]}
item replace entity @s contents from entity @p[tag=cnk.interact_mr_kettle] weapon.mainhand
execute at @s rotated as @n[type=minecraft:item_display,tag=cnk.mr_kettle] run tp @s ~ ~ ~ ~ ~
ride @s mount @n[type=minecraft:item_display,tag=cnk.mr_kettle]
playsound cnk:item.mr_kettle.squeak block @a ~ ~ ~ 1 1

item modify entity @p[tag=cnk.interact_mr_kettle] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}