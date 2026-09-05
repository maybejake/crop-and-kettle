execute unless block ~ ~ ~ minecraft:mangrove_propagule as @n[type=minecraft:item,nbt={Item:{id:"minecraft:mangrove_propagule"}},distance=..1] run function cnk:crops/kill

execute if block ~ ~ ~ minecraft:mangrove_propagule run setblock ~ ~ ~ minecraft:water replace
execute if block ~ ~1 ~ minecraft:light run setblock ~ ~1 ~ minecraft:air replace

execute on passengers run kill @s
kill @s