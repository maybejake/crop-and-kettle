advancement revoke @s only cnk:interact_cutting_board

scoreboard players set $interact_cutting_board_check cnk.dummy 0

tag @s add cnk.interact_cutting_board
execute as @e[type=minecraft:interaction,tag=cnk.cutting_board_interaction,distance=..20] at @s run function cnk:cutting_board/interact/check
tag @s remove cnk.interact_cutting_board