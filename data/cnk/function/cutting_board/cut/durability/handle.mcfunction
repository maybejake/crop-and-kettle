execute if entity @s[predicate=cnk:unbreaking/mainhand/all] if function cnk:cutting_board/cut/durability/unbreaking run return fail
execute unless items entity @s weapon.mainhand minecraft:iron_sword[minecraft:custom_data~{cnk:{knife:true}}] run return fail

#handle damage
data modify storage cnk:temp knife.components set from entity @s SelectedItem.components

scoreboard players set $damage cnk.dummy 0
execute store result score $damage cnk.dummy run data get storage cnk:temp knife.components."minecraft:damage"
scoreboard players add $damage cnk.dummy 1

scoreboard players set $max_damage cnk.dummy 0
execute store result score $max_damage cnk.dummy run data get storage cnk:temp knife.components."minecraft:max_damage"

execute store result storage cnk:temp knife.damage int 1 run scoreboard players get $damage cnk.dummy

function cnk:cutting_board/cut/durability/apply with storage cnk:temp knife
execute if score $damage cnk.dummy >= $max_damage cnk.dummy run function cnk:cutting_board/cut/durability/break