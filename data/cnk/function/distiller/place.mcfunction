kill @s

playsound minecraft:block.iron.place block @a ~ ~ ~ 1 1

execute unless block ~ ~ ~ #cnk:air run return run loot spawn ~ ~ ~ loot cnk:tools/distiller
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=smithed.block,distance=..0.1] at @s run return run loot spawn ~ ~ ~ loot cnk:tools/distiller

setblock ~ ~ ~ minecraft:hopper[facing=down,enabled=false]{CustomName:{translate:gui.cnk.distiller,font:"cnk:gui",color:"white"},TransferCooldown:1000} replace

data modify storage cnk:temp rotation set value 0
execute store result score $player_rotation cnk.dummy run data get entity @p[advancements={cnk:item_frame=true}] Rotation[0]
execute if score $player_rotation cnk.dummy matches 135..180 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $player_rotation cnk.dummy matches -180..-135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $player_rotation cnk.dummy matches -135..-45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 90
execute if score $player_rotation cnk.dummy matches -45..45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180
execute if score $player_rotation cnk.dummy matches 45..135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90

function cnk:distiller/macro with storage cnk:temp
scoreboard players set @n[type=minecraft:item_display,tag=cnk.distiller] cnk.cook_time 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.distiller] cnk.cook_cooldown 0