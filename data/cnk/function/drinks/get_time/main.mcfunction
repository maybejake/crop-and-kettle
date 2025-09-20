#cooldown
execute store result score @s cnk.wine_time_cooldown run time query gametime
scoreboard players add @s cnk.wine_time_cooldown 10
schedule function cnk:drinks/get_time/cooldown 10t append

execute if entity @s[predicate=cnk:wine/mainhand] run return run execute store result score @s cnk.wine_time run data get entity @s SelectedItem.components."minecraft:custom_data".cnk.wine.time
execute if entity @s[predicate=cnk:wine/offhand] run return run execute store result score @s cnk.wine_time run data get entity @s equipment.offhand.components."minecraft:custom_data".cnk.wine.time