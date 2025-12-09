execute store result score $seed_chance cnk.dummy run random value 1..10
execute if score $seed_chance cnk.dummy matches 6.. run return fail

execute store result score $seed_type cnk.dummy run random value 1..4
execute if score $seed_type cnk.dummy matches 1 run loot replace entity @s contents loot cnk:seeds/tomato_seeds
execute if score $seed_type cnk.dummy matches 2 run loot replace entity @s contents loot cnk:seeds/corn_seeds
execute if score $seed_type cnk.dummy matches 3 run loot replace entity @s contents loot cnk:seeds/lettuce_seeds
execute if score $seed_type cnk.dummy matches 4 run loot replace entity @s contents loot cnk:seeds/rice_seeds