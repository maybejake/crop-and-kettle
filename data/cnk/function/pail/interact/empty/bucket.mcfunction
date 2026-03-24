scoreboard players set $quantity cnk.dummy 8

data modify storage cnk:temp pail.current_liquid set from entity @s item.components."minecraft:custom_data".cnk.pail.liquid
execute unless function cnk:pail/interact/empty/empty run return fail

playsound minecraft:item.bucket.fill block @a ~ ~ ~ 1 1
execute as @p[tag=cnk.interact_pail] run function cnk:pail/interact/empty/bucket_player