execute on passengers run kill @s
kill @s

setblock ~ ~ ~ minecraft:air replace
playsound block.iron.break block @a ~ ~ ~ 1 2
particle minecraft:item{item:{id:"minecraft:cauldron"}} ~ ~0.5 ~ 0.4 0.4 0.4 0.1 20

loot spawn ~ ~ ~ loot cnk:tools/basin