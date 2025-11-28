execute on passengers run kill @s
kill @s

playsound block.grass.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:scarecrow_item"}}} ~ ~1.5 ~ 0.2 0.6 0.2 0.1 40

loot spawn ~ ~ ~ loot cnk:other/scarecrow