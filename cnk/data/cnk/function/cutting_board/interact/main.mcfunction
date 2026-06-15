advancement revoke @s only cnk:interact_cutting_board

tag @s add cnk.interact_cutting_board
execute as @n[type=minecraft:interaction,tag=cnk.cutting_board_interaction,nbt={interaction:{}},distance=..20] at @s run function cnk:cutting_board/interact/on_interaction
tag @s remove cnk.interact_cutting_board