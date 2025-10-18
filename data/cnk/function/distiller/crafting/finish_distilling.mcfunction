scoreboard players set @s cnk.cook_time 0
scoreboard players set @s cnk.cook_cooldown 30
scoreboard players reset @s cnk.distill_timer

data modify entity @s item.components."minecraft:item_model" set value "cnk:distiller_pouring"

data modify entity @s item.components."minecraft:custom_model_data".colors set value []
data modify entity @s item.components."minecraft:custom_model_data".colors append from storage cnk:temp distiller.color

stopsound @a[distance=..6] block cnk:block.distiller.distill

execute positioned ^1 ^ ^ as @n[type=minecraft:item_display,tag=cnk.basin,distance=..0.1] run function cnk:basin/fill
execute positioned ^1 ^-0.5 ^ as @n[type=minecraft:item_display,tag=cnk.basin,distance=..0.1] run function cnk:basin/fill

particle white_smoke ^0.72 ^0.6 ^ 0 0 0 0 10
playsound cnk:block.distiller.finish block @a ~ ~ ~ 1 2
playsound minecraft:block.water.ambient block @a ~ ~ ~ 1 1.8