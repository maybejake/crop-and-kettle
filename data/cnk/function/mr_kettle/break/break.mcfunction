execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.mr_kettle_item] if data entity @s item.components run function cnk:mr_kettle/item/item_macro_components with entity @s item
execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.mr_kettle_item] unless data entity @s item.components run function cnk:mr_kettle/item/item_macro with entity @s item
execute on passengers run kill @s
kill @s

playsound cnk:item.mr_kettle.squeak block @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"cnk:mr_kettle"}}} ~ ~-0.25 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot cnk:zzz_secret/mr_kettle