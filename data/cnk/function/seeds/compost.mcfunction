kill @s

execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:happy_villager ~ ~ ~ 0.17 0.25 0.17 0 5 normal

execute store result score $compost_chance cnk.dummy run random value 1..10
execute if score $compost_chance cnk.dummy matches 4.. run return run playsound minecraft:block.composter.fill block @a ~ ~ ~ 1 1

playsound minecraft:block.composter.fill_success block @a ~ ~ ~ 1 1

execute if block ~ ~ ~ minecraft:composter[level=0] run return run setblock ~ ~ ~ minecraft:composter[level=1]
execute if block ~ ~ ~ minecraft:composter[level=1] run return run setblock ~ ~ ~ minecraft:composter[level=2]
execute if block ~ ~ ~ minecraft:composter[level=2] run return run setblock ~ ~ ~ minecraft:composter[level=3]
execute if block ~ ~ ~ minecraft:composter[level=3] run return run setblock ~ ~ ~ minecraft:composter[level=4]
execute if block ~ ~ ~ minecraft:composter[level=4] run return run setblock ~ ~ ~ minecraft:composter[level=5]
execute if block ~ ~ ~ minecraft:composter[level=5] run return run setblock ~ ~ ~ minecraft:composter[level=6]
execute if block ~ ~ ~ minecraft:composter[level=6] run return run setblock ~ ~ ~ minecraft:composter[level=7]
execute if block ~ ~ ~ minecraft:composter[level=7] run playsound minecraft:block.composter.ready block @a ~ ~ ~ 1 1
execute if block ~ ~ ~ minecraft:composter[level=7] run return run setblock ~ ~ ~ minecraft:composter[level=8]