execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.cutting_board_item] at @s run return run function cnk:cutting_board/item/remove

scoreboard players add @s cnk.hit_count 1
playsound minecraft:block.bamboo_wood.hit block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 5