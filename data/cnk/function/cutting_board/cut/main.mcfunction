scoreboard players set $cut_check cnk.dummy 0
data modify storage cnk:temp cutting_board.item set from entity @s item
execute if data storage cnk:temp cutting_board.item.components."minecraft:custom_data" run data modify storage cnk:temp cutting_board.item.id set value "ignore"

function #cnk:recipes/cutting_board

execute if score $cut_check cnk.dummy matches 0 run function cnk:cutting_board/item/remove
execute if score $cut_check cnk.dummy matches 1 as @p[tag=cnk.interact_cutting_board,distance=..20] unless entity @s[gamemode=creative] run function cnk:cutting_board/cut/durability/handle