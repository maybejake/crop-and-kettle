playsound minecraft:block.bamboo_wood.step block @a ~ ~ ~ 1 2
execute if data entity @s item.components run function cnk:cutting_board/item/item_macro_components with entity @s item
execute unless data entity @s item.components run function cnk:cutting_board/item/item_macro with entity @s item
kill @s