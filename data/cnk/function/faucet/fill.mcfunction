playsound minecraft:block.water.ambient block @a ~ ~ ~ 1 1.5

execute align xyz positioned ~0.5 ~-1 ~0.5 as @n[type=minecraft:item_display,tag=cnk.pail,distance=..0.1] run return run function cnk:faucet/fill_pail
execute if block ~ ~-1 ~ minecraft:cauldron run return run setblock ~ ~-1 ~ minecraft:water_cauldron[level=1] replace
execute if block ~ ~-1 ~ minecraft:water_cauldron[level=1] run return run setblock ~ ~-1 ~ minecraft:water_cauldron[level=2] replace
execute if block ~ ~-1 ~ minecraft:water_cauldron[level=2] run return run setblock ~ ~-1 ~ minecraft:water_cauldron[level=3] replace