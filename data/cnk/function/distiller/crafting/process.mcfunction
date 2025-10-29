execute if score $distiller_lock cnk.dummy matches 1 run return fail
scoreboard players set $distiller_lock cnk.dummy 1

particle minecraft:smoke ~ ~1 ~ 0.15 0.25 0.15 0 1

scoreboard players add @s cnk.distill_timer 1
execute if score @s cnk.distill_timer matches 70 run playsound cnk:block.distiller.distill block @a[distance=..6] ~ ~ ~ 0.6 1
execute if score @s cnk.distill_timer matches 70 run scoreboard players reset @s cnk.distill_timer

execute unless score @s cnk.distill_goal matches 1.. run function cnk:distiller/crafting/setup

execute if score @s cnk.distill_goal <= $gametime cnk.dummy run return 1

scoreboard players operation $time_delta cnk.dummy = @s cnk.distill_goal
scoreboard players operation $time_delta cnk.dummy -= $gametime cnk.dummy
scoreboard players operation $dial_state cnk.dummy = $distill_time cnk.dummy
scoreboard players operation $dial_state cnk.dummy -= $time_delta cnk.dummy

scoreboard players set $100 cnk.dummy 100
scoreboard players operation $dial_state cnk.dummy *= $100 cnk.dummy
scoreboard players operation $dial_state cnk.dummy /= $distill_time cnk.dummy

execute if score $dial_state cnk.dummy matches 20..40 run data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_1"
execute if score $dial_state cnk.dummy matches 41..60 run data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_2"
execute if score $dial_state cnk.dummy matches 61..80 run data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_3"
execute if score $dial_state cnk.dummy matches 81.. run data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_4"

return fail