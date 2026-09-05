execute unless block ~ ~ ~ minecraft:pumpkin_stem as @n[type=minecraft:item,nbt={Item:{id:"minecraft:pumpkin_seeds"}},distance=..1] run function cnk:crops/kill

execute if block ~ ~ ~ minecraft:pumpkin_stem run setblock ~ ~ ~ minecraft:air replace

execute on passengers run kill @s
kill @s