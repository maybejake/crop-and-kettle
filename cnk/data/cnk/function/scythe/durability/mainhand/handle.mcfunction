execute if entity @s[predicate=cnk:unbreaking/mainhand/all] if function cnk:scythe/durability/mainhand/unbreaking run return run function cnk:scythe/durability/modify

#handle damage
data modify storage cnk:temp scythe.components set from entity @s SelectedItem.components

scoreboard players set $damage cnk.dummy 0
execute store result score $damage cnk.dummy run data get storage cnk:temp scythe.components."minecraft:damage"
scoreboard players add $damage cnk.dummy 1

scoreboard players set $max_damage cnk.dummy 0
execute store result score $max_damage cnk.dummy run data get storage cnk:temp scythe.components."minecraft:max_damage"

execute store result storage cnk:temp scythe.damage int 1 run scoreboard players get $damage cnk.dummy

function cnk:scythe/durability/mainhand/apply with storage cnk:temp scythe
execute if score $damage cnk.dummy >= $max_damage cnk.dummy run function cnk:scythe/durability/mainhand/break