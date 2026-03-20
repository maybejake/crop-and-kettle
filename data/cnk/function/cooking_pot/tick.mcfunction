execute unless block ~ ~ ~ minecraft:hopper[facing=down] run return run function cnk:cooking_pot/break

function cnk:cooking_pot/effects/flame

scoreboard players add @s cnk.timer 1
execute if score @s cnk.timer matches 1 if block ~ ~-1 ~ minecraft:hopper[enabled=true] run data modify block ~ ~-1 ~ TransferCooldown set value 120
execute if score @s cnk.timer matches 50 run data modify block ~ ~ ~ TransferCooldown set value 1000
execute if score @s cnk.timer matches 50 run function cnk:cooking_pot/effects/idling
execute if score @s cnk.timer matches 50 run scoreboard players reset @s cnk.timer

execute if score @s cnk.cook_cooldown matches 1.. run return run scoreboard players remove @s cnk.cook_cooldown 1

data modify storage cnk:temp cooking_pot.Items set from block ~ ~ ~ Items

execute store result score $filled_slots cnk.dummy run data get storage cnk:temp cooking_pot.Items
execute if score $filled_slots cnk.dummy matches 0 if score @s cnk.cook_time matches 1.. run return run function cnk:cooking_pot/stop
execute if score $filled_slots cnk.dummy matches 0 run return fail

# sanitise data
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{}}}}] run function cnk:cooking_pot/fathoms
data remove storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{}}}].id

# make sourdough count as bread
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"sourdough_bread"}}}}}] run data modify storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"sourdough_bread"}}}}}].id set value "minecraft:bread"

data modify storage cnk:temp unique_items_check set value []
data modify storage cnk:temp unique_items_check set from storage cnk:temp cooking_pot.Items

# sanitise for pails
data remove storage cnk:temp unique_items_check[{components:{"minecraft:custom_data":{cnk:{pail:{}}}}}].components."minecraft:custom_data".cnk.pail.quantity

function cnk:cooking_pot/crafting/get_unique

execute if entity @s[tag=!cnk.stove] run function cnk:cooking_pot/cook
execute if entity @s[tag=cnk.stove] positioned ^ ^-0.4 ^0.7 run function cnk:cooking_pot/cook

execute if score $cooking_pot_lock cnk.dummy matches 0 if score @s cnk.cook_time matches 1.. run function cnk:cooking_pot/stop