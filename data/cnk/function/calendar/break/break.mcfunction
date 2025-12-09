execute on passengers run kill @s
kill @s

playsound minecraft:entity.item_frame.break block @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:barrier",components:{"minecraft:item_model":"cnk:calendar"}}} ^ ^0.5 ^-0.2 0.15 0.2 0.15 0.1 20

loot spawn ~ ~ ~ loot cnk:tools/calendar