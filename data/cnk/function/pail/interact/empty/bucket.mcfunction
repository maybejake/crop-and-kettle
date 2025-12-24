scoreboard players set $quantity cnk.dummy 8

execute unless function cnk:pail/interact/empty/empty run return fail

playsound minecraft:item.bucket.fill block @a ~ ~ ~ 1 1
execute as @p[tag=cnk.interact_pail] run item modify entity @s[gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count","count":-1,"add":true}

data modify storage cnk:temp pail.current_liquid set from entity @s item.components."minecraft:custom_data".cnk.pail.liquid
execute if data storage cnk:temp pail{current_liquid:"water"} as @p[tag=cnk.interact_pail] if predicate cnk:inventory_full run loot spawn ~ ~1 ~ loot cnk:other/water_bucket
execute if data storage cnk:temp pail{current_liquid:"milk"} as @p[tag=cnk.interact_pail] if predicate cnk:inventory_full run loot spawn ~ ~1 ~ loot cnk:other/milk_bucket
execute if data storage cnk:temp pail{current_liquid:"water"} as @p[tag=cnk.interact_pail] unless predicate cnk:inventory_full run loot give @s loot cnk:other/water_bucket
execute if data storage cnk:temp pail{current_liquid:"milk"} as @p[tag=cnk.interact_pail] unless predicate cnk:inventory_full run loot give @s loot cnk:other/milk_bucket