data remove entity @s interaction

execute if items entity @p[tag=cnk.interact_cutting_board,distance=..20] weapon.mainhand *[minecraft:custom_data~{cnk:{knife:true}}] on vehicle on passengers if entity @s[type=minecraft:item_display,tag=cnk.cutting_board_item] at @s run return run function cnk:cutting_board/cut/main
execute if items entity @p[tag=cnk.interact_cutting_board,distance=..20] weapon.mainhand *[minecraft:custom_data~{cnk:{knife:true}}] if items entity @p[tag=cnk.interact_cutting_board,distance=..20] weapon.offhand * run return run function cnk:cutting_board/item/offhand
execute if items entity @p[tag=cnk.interact_cutting_board,distance=..20] weapon.mainhand * at @s run return run function cnk:cutting_board/item/main
execute on vehicle on passengers if entity @s[type=minecraft:item_display,tag=cnk.cutting_board_item] at @s run function cnk:cutting_board/item/remove