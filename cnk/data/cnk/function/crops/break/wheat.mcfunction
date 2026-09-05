execute unless block ~ ~ ~ minecraft:wheat as @n[type=minecraft:item,nbt={Item:{id:"minecraft:wheat_seeds"}},distance=..1] run function cnk:crops/kill

execute if block ~ ~ ~ minecraft:wheat run setblock ~ ~ ~ minecraft:air replace

execute on passengers run kill @s
kill @s