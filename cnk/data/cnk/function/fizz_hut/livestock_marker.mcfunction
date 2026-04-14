execute store result score $chance cnk.dummy run random value 1..3
execute if score $chance cnk.dummy matches 1 run summon minecraft:pig ~ ~ ~
execute if score $chance cnk.dummy matches 2 run summon minecraft:sheep ~ ~ ~
execute if score $chance cnk.dummy matches 3 run summon minecraft:cow ~ ~ ~