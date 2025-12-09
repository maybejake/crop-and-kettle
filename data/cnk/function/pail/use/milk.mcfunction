data modify storage cnk:temp pail.item set from entity @s[tag=cnk.pail_mainhand] SelectedItem
data modify storage cnk:temp pail.item set from entity @s[tag=cnk.pail_offhand] equipment.offhand

# full
execute if data storage cnk:temp pail.item.components."minecraft:custom_data".cnk.pail{quantity:32} run return fail

# dont mix your milk
execute if data storage cnk:temp pail.item.components."minecraft:custom_data".cnk.pail unless data storage cnk:temp pail.item.components."minecraft:custom_data".cnk.pail{liquid:"milk"} run return fail

# store count
execute store result score $pail_count cnk.dummy run data get storage cnk:temp pail.item.count

scoreboard players set $quantity cnk.dummy 0
execute store result score $quantity cnk.dummy run data get storage cnk:temp pail.item.components."minecraft:custom_data".cnk.pail.quantity
scoreboard players add $quantity cnk.dummy 8

execute if score $quantity cnk.dummy matches 33.. run scoreboard players set $quantity cnk.dummy 32

execute store result storage cnk:temp pail.quantity int 1 run scoreboard players get $quantity cnk.dummy
data modify storage cnk:temp pail.color set value 16777215

playsound minecraft:entity.cow.milk neutral @a ~ ~ ~ 1 1

# gotta check pail count otherwise we enter a weird looping state for some reason, advancement keeps getting granted
execute unless data storage cnk:temp pail.item.components."minecraft:custom_data".cnk.pail unless score $pail_count cnk.dummy matches 1 run item modify entity @p[tag=cnk.pail_mainhand] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}
execute unless data storage cnk:temp pail.item.components."minecraft:custom_data".cnk.pail unless score $pail_count cnk.dummy matches 1 run item modify entity @p[tag=cnk.pail_offhand] weapon.offhand {"function":"minecraft:set_count","count":-1,"add":true}
execute unless data storage cnk:temp pail.item.components."minecraft:custom_data".cnk.pail unless score $pail_count cnk.dummy matches 1 run execute if predicate cnk:inventory_full at @s run return run function cnk:pail/use/spawn with storage cnk:temp pail
execute unless data storage cnk:temp pail.item.components."minecraft:custom_data".cnk.pail unless score $pail_count cnk.dummy matches 1 run execute unless predicate cnk:inventory_full at @s run return run function cnk:pail/use/give with storage cnk:temp pail

execute if entity @s[tag=cnk.pail_mainhand] run function cnk:pail/use/mainhand with storage cnk:temp pail
execute if entity @s[tag=cnk.pail_offhand] run function cnk:pail/use/offhand with storage cnk:temp pail