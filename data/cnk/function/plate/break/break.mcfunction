execute on passengers if entity @s[type=minecraft:item_display,tag=cnk.plate_item] run function cnk:plate/item/remove
execute on passengers run kill @s
kill @s

playsound block.bamboo_wood.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:spruce_planks"}} ~ ~0.1 ~ 0.3 0.1 0.3 0.1 20

loot spawn ~ ~ ~ loot cnk:tools/plate