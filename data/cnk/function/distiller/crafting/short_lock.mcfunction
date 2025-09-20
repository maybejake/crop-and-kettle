execute if score $distiller_lock cnk.dummy matches 1 run return fail
scoreboard players set $distiller_lock cnk.dummy 1

particle minecraft:smoke ~ ~1 ~ 0.15 0.25 0.15 0 1

scoreboard players add @s cnk.distill_timer 1
execute if score @s cnk.distill_timer matches 70 run playsound cnk:block.distiller.distill block @a[distance=..6] ~ ~ ~ 0.6 1
execute if score @s cnk.distill_timer matches 70 run scoreboard players reset @s cnk.distill_timer

execute if score @s cnk.cook_time matches 0 run playsound cnk:block.distiller.distill block @a[distance=..6] ~ ~ ~ 0.6 1
execute if score @s cnk.cook_time matches 60 run data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_1"
execute if score @s cnk.cook_time matches 120 run data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_2"
execute if score @s cnk.cook_time matches 180 run data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_3"
execute if score @s cnk.cook_time matches 240 run data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_4"
execute if score @s cnk.cook_time matches 300.. run return 1

# Still distilling, don't unlock
scoreboard players add @s cnk.cook_time 1
return fail