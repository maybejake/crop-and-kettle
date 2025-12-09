#playsound minecraft:item.bucket.fill block @a ~ ~ ~ 1 1.2
playsound minecraft:block.water.ambient block @a ~ ~ ~ 1 1.5

execute if block ~ ~-1 ~ minecraft:cauldron run return run setblock ~ ~-1 ~ minecraft:water_cauldron[level=1] replace
execute if block ~ ~-1 ~ minecraft:water_cauldron[level=1] run return run setblock ~ ~-1 ~ minecraft:water_cauldron[level=2] replace
execute if block ~ ~-1 ~ minecraft:water_cauldron[level=2] run return run setblock ~ ~-1 ~ minecraft:water_cauldron[level=3] replace