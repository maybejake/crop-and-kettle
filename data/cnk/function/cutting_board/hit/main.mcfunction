advancement revoke @s only cnk:hit_cutting_board

scoreboard players set $hit_cutting_board_check cnk.dummy 0

tag @s add cnk.hit_cutting_board
execute as @e[type=minecraft:interaction,tag=cnk.cutting_board_interaction,distance=..20] run function cnk:cutting_board/hit/check
tag @s remove cnk.hit_cutting_board