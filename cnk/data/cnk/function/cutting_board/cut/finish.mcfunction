scoreboard players set $cut_check cnk.dummy 1
playsound cnk:block.cutting_board.chop block @a ~ ~ ~ 0.8 0.8
playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 0.8 2
kill @s

execute as @p[tag=cnk.interact_cutting_board,distance=..20] at @s run function cnk:cutting_board/cut/on_chef

execute unless data storage cnk:temp cutting_board.item.id run data modify storage cnk:temp cutting_board.item.id set value "minecraft:spruce_planks"
execute unless data storage cnk:temp cutting_board.item.components run data modify storage cnk:temp cutting_board.item.components set value {}
function cnk:cutting_board/cut/particle with storage cnk:temp cutting_board.item