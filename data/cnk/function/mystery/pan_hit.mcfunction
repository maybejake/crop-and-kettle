advancement revoke @s only cnk:pan_hit

execute store result score $sound cnk.dummy run random value 1..3
execute if score $sound cnk.dummy matches 1 run playsound minecraft:block.bell.use neutral @s ~ ~ ~ 0.5 1.4
execute if score $sound cnk.dummy matches 2 run playsound minecraft:block.bell.use neutral @s ~ ~ ~ 0.5 1.5
execute if score $sound cnk.dummy matches 3 run playsound minecraft:block.bell.use neutral @s ~ ~ ~ 0.5 1.6

playsound minecraft:block.copper_grate.place neutral @a ~ ~ ~ 1 0.1