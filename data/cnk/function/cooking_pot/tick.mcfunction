execute unless block ~ ~ ~ minecraft:hopper[facing=down] run return run function cnk:cooking_pot/break

scoreboard players add @s cnk.timer 1
execute if entity @s[tag=cnk.witch_cauldron] run function cnk:cooking_pot/effects/green_flame
execute if entity @s[tag=!cnk.witch_cauldron] run particle minecraft:flame ~ ~-0.35 ~ 0.18 0.05 0.18 0 1
execute if score @s cnk.timer matches 1 if block ~ ~-1 ~ minecraft:hopper[enabled=true] run data modify block ~ ~-1 ~ TransferCooldown set value 120
execute if score @s cnk.timer matches 50 run data modify block ~ ~ ~ TransferCooldown set value 1000
execute if score @s cnk.timer matches 50 run playsound cnk:block.cooking_pot.idling block @a[distance=..6] ~ ~ ~ 0.2 1
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

scoreboard players set $cooking_pot_lock cnk.dummy 0
execute if score $unique_items cnk.dummy matches 1 run function #cnk:recipes/cooking_pot/1
execute if score $unique_items cnk.dummy matches 2 run function #cnk:recipes/cooking_pot/2
execute if score $unique_items cnk.dummy matches 3 run function #cnk:recipes/cooking_pot/3
execute if score $unique_items cnk.dummy matches 4 run function #cnk:recipes/cooking_pot/4
execute if score $unique_items cnk.dummy matches 5 run function #cnk:recipes/cooking_pot/5

execute if score $cooking_pot_lock cnk.dummy matches 0 if score @s cnk.cook_time matches 1.. run function cnk:cooking_pot/stop