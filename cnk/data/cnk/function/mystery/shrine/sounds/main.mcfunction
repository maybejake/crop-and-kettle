schedule function cnk:mystery/shrine/sounds/main 150t

execute store result score $sound_chance cnk.dummy run random value 1..4
execute if score $sound_chance cnk.dummy matches 4 as @e[type=minecraft:marker,tag=cnk.shrine_marker] at @s run function cnk:mystery/shrine/sounds/switch