execute store result score $current_quantity cnk.dummy run data get entity @s item.components."minecraft:custom_model_data".floats[0]

execute if score $current_quantity cnk.dummy matches 0 run return fail

scoreboard players operation $current_quantity cnk.dummy -= $quantity cnk.dummy
execute if score $current_quantity cnk.dummy matches ..-1 run return fail

execute store result entity @s item.components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get $current_quantity cnk.dummy
execute if score $current_quantity cnk.dummy matches 0 run data remove entity @s item.components."minecraft:custom_data".cnk.pail
execute if score $current_quantity cnk.dummy matches 0 run data remove entity @s item.components."minecraft:custom_model_data".colors
return 1