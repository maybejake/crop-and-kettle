scoreboard players set $cut_check cnk.dummy 0

# get and sanitise data
data remove storage cnk:temp data
data modify storage cnk:temp data append from entity @s item
function cnk:data_sanitiser/main
data modify storage cnk:temp cutting_board.item set from storage cnk:temp data[0]

function #cnk:recipes/cutting_board

execute if score $cut_check cnk.dummy matches 0 run function cnk:cutting_board/item/remove
execute if score $cut_check cnk.dummy matches 1 as @p[tag=cnk.interact_cutting_board,distance=..20] unless entity @s[gamemode=creative] run function cnk:durability/mainhand/main
execute if score $cut_check cnk.dummy matches 1 run swing @p[tag=cnk.interact_cutting_board,distance=..20] mainhand