scoreboard players set $quantity cnk.dummy 8

execute unless function cnk:pail/interact/empty/empty run return fail

playsound minecraft:item.bucket.fill block @a ~ ~ ~ 1 1
execute as @p[tag=cnk.interact_pail] run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:water_bucket

data modify storage cnk:temp pail.current_liquid set from entity @s item.components."minecraft:custom_data".cnk.pail.liquid
execute if data storage cnk:temp pail{current_liquid:"water"} as @p[tag=cnk.interact_pail] run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:water_bucket
execute if data storage cnk:temp pail{current_liquid:"milk"} as @p[tag=cnk.interact_pail] run item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:milk_bucket