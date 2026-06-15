advancement revoke @s only cnk:hit_cutting_board

tag @s add cnk.hit_cutting_board
execute as @n[type=minecraft:interaction,tag=cnk.cutting_board_interaction,nbt={attack:{}},distance=..20] run function cnk:cutting_board/hit/on_interaction
tag @s remove cnk.hit_cutting_board