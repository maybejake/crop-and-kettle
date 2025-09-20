playsound cnk:item.mr_kettle.squeak block @a ~ ~ ~ 1 1
execute if data entity @s item.components run function cnk:mr_kettle/item/item_macro_components with entity @s item
execute unless data entity @s item.components run function cnk:mr_kettle/item/item_macro with entity @s item
kill @s