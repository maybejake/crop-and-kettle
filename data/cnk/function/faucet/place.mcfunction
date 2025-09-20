kill @s

playsound minecraft:block.iron.place block @a ~ ~ ~ 1 1

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=smithed.block,distance=..0.1] at @s run return run loot spawn ~ ~ ~ loot cnk:tools/faucet

data modify storage cnk:temp rotation set value 0
execute store result score $player_rotation cnk.dummy run data get entity @p[advancements={cnk:item_frame=true}] Rotation[0]
execute if score $player_rotation cnk.dummy matches 135..180 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $player_rotation cnk.dummy matches -180..-135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $player_rotation cnk.dummy matches -135..-45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 90
execute if score $player_rotation cnk.dummy matches -45..45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180
execute if score $player_rotation cnk.dummy matches 45..135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90

function cnk:faucet/macro with storage cnk:temp
scoreboard players set @n[type=minecraft:item_display,tag=cnk.cutting_board] cnk.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.cutting_board] cnk.hit_timer 0