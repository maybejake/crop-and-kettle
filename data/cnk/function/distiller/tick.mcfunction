execute unless block ~ ~ ~ minecraft:hopper[facing=down] run return run function cnk:distiller/break

scoreboard players add @s cnk.timer 1
execute if score @s cnk.timer matches 50 run data modify block ~ ~ ~ TransferCooldown set value 1000
execute if score @s cnk.timer matches 50 run scoreboard players reset @s cnk.timer

execute if score @s cnk.cook_cooldown matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_0"
execute if score @s cnk.cook_cooldown matches 1.. run particle white_smoke ^0.72 ^0.6 ^ 0 0 0 0 1
execute if score @s cnk.cook_cooldown matches 1.. run return run scoreboard players remove @s cnk.cook_cooldown 1

function cnk:distiller/check_basin
execute unless data storage cnk:temp distiller.basin if score @s cnk.distill_goal matches 1.. run return run function cnk:distiller/stop
execute unless data storage cnk:temp distiller.basin run return fail

data modify storage cnk:temp distiller.Items set from block ~ ~ ~ Items

execute store result score $filled_slots cnk.dummy run data get storage cnk:temp distiller.Items
execute if score $filled_slots cnk.dummy matches 0 if score @s cnk.distill_goal matches 1.. run return run function cnk:distiller/stop
execute if score $filled_slots cnk.dummy matches 0 run return fail

# sanitise data
execute if data storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{fathoms:{}}}}] run function cnk:distiller/fathoms
data remove storage cnk:temp distiller.Items[{components:{"minecraft:custom_data":{}}}].id

data modify storage cnk:temp unique_items_check set value []
data modify storage cnk:temp unique_items_check set from storage cnk:temp distiller.Items
function cnk:cooking_pot/crafting/get_unique

scoreboard players set $distiller_lock cnk.dummy 0
function #cnk:recipes/distiller

execute if score $distiller_lock cnk.dummy matches 0 if score @s cnk.distill_goal matches 1.. run function cnk:distiller/stop