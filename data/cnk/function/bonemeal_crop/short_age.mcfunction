execute store result score $age_chance cnk.dummy run random value 1..4
execute if score $age_chance cnk.dummy matches 1..3 run scoreboard players add @s cnk.age 1