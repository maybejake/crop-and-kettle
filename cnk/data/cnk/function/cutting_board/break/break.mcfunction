execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.cutting_board_item] if data entity @s item.components run function cnk:cutting_board/item/item_macro_components with entity @s item
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.cutting_board_item] unless data entity @s item.components run function cnk:cutting_board/item/item_macro with entity @s item
execute on passengers run kill @s
kill @s

playsound block.bamboo_wood.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot cnk:tools/cutting_board