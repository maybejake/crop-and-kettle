execute store result score $food_chance cnk.dummy run random value 1..3

execute if score $food_chance cnk.dummy matches 1..2 run function cnk:dev/spawn_random
execute if score $food_chance cnk.dummy matches 2..3 positioned ~0.5 ~ ~ run function cnk:dev/spawn_random