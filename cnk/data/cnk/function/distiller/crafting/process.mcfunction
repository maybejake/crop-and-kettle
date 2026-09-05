execute if score $distiller_lock cnk.dummy matches 1 run return fail
scoreboard players set $distiller_lock cnk.dummy 1

particle minecraft:smoke ~ ~1 ~ 0.15 0.25 0.15 0 1

scoreboard players add @s cnk.distill_timer 1
execute if score @s cnk.distill_timer matches 1 run playsound cnk:block.distiller.distill block @a[distance=..6] ~ ~ ~ 0.6 1
execute if score @s cnk.distill_timer matches 65.. run scoreboard players reset @s cnk.distill_timer

execute unless score @s cnk.distill_goal matches 1.. run function cnk:distiller/crafting/setup

execute if score @s cnk.distill_goal <= $gametime cnk.dummy run return 1

# update dial
item modify entity @s contents cnk:distiller/update_dial

return fail