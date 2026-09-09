execute store result score $seed_chance cnk.dummy run random value 1..10
execute if score $seed_chance cnk.dummy matches 6.. run return fail

loot replace entity @s contents loot cnk:technical/grass_seeds