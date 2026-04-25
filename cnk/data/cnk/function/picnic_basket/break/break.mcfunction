execute on passengers run kill @s
kill @s

playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 1.5
particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:picnic_basket"}}} ~ ~0.3 ~ 0.4 0.3 0.4 0.1 20

loot spawn ~ ~ ~ loot cnk:tools/picnic_basket