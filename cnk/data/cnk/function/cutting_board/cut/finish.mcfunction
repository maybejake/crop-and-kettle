scoreboard players set $cut_check cnk.dummy 1
playsound cnk:block.cutting_board.chop block @a ~ ~ ~ 0.8 0.8
playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 0.8 2
kill @s

execute as @p[tag=cnk.interact_cutting_board,distance=..20] at @s run function cnk:cutting_board/cut/on_chef