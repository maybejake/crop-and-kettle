execute if score $hit_cutting_board_check cnk.dummy matches 1 run return fail

execute on attacker if entity @s[tag=cnk.hit_cutting_board] run scoreboard players set $hit_cutting_board_check cnk.dummy 1
execute if score $hit_cutting_board_check cnk.dummy matches 1 run data remove entity @s attack
execute if score $hit_cutting_board_check cnk.dummy matches 1 on vehicle on passengers if entity @s[type=minecraft:item_display,tag=cnk.cutting_board_item] at @s run return run function cnk:cutting_board/item/remove
execute if score $hit_cutting_board_check cnk.dummy matches 1 on vehicle run scoreboard players add @s cnk.hit_count 1
execute if score $hit_cutting_board_check cnk.dummy matches 1 on vehicle at @s run playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 1 2
execute if score $hit_cutting_board_check cnk.dummy matches 1 on vehicle at @s run particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5