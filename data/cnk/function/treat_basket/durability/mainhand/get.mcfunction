data modify storage cnk:temp treat_basket.components set from entity @s SelectedItem.components

scoreboard players set $damage cnk.dummy 0
execute store result score $damage cnk.dummy run data get storage cnk:temp treat_basket.components."minecraft:damage"
execute if entity @s[gamemode=!creative] run scoreboard players add $damage cnk.dummy 1

scoreboard players set $max_damage cnk.dummy 0
execute store result score $max_damage cnk.dummy run data get storage cnk:temp treat_basket.components."minecraft:max_damage"

execute store result storage cnk:temp treat_basket.damage int 1 run scoreboard players get $damage cnk.dummy
execute store result storage cnk:temp treat_basket.max_damage int 1 run scoreboard players get $max_damage cnk.dummy