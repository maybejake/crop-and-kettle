execute if score $interact_cutting_board_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_cutting_board] run scoreboard players set $interact_cutting_board_check cnk.dummy 1
execute if score $interact_cutting_board_check cnk.dummy matches 1 run function cnk:cutting_board/interact/found