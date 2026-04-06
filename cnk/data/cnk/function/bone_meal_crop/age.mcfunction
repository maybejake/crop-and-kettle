execute store result score $age_increase cnk.dummy run random value 2..5
scoreboard players operation @s cnk.age += $age_increase cnk.dummy
execute if score @s cnk.age > @s cnk.max_age run scoreboard players operation @s cnk.age = @s cnk.max_age