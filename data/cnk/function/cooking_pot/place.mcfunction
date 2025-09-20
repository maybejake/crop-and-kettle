kill @s

playsound minecraft:block.iron.place block @a ~ ~ ~ 1 1

execute unless block ~ ~ ~ #minecraft:air run return run loot spawn ~ ~ ~ loot cnk:tools/cooking_pot
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=smithed.block,distance=..0.1] at @s run return run loot spawn ~ ~ ~ loot cnk:tools/cooking_pot

setblock ~ ~ ~ minecraft:hopper[facing=down,enabled=false]{CustomName:{translate:gui.cnk.cooking_pot,font:"cnk:gui",color:"white"},TransferCooldown:1000} replace
playsound cnk:block.cooking_pot.idling block @a[distance=..6] ~ ~ ~ 0.2 1

data modify storage cnk:temp rotation set value 0
execute store result score $player_rotation cnk.dummy run data get entity @p[advancements={cnk:item_frame=true}] Rotation[0]
execute if score $player_rotation cnk.dummy matches 135..180 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $player_rotation cnk.dummy matches -180..-135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $player_rotation cnk.dummy matches -135..-45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 90
execute if score $player_rotation cnk.dummy matches -45..45 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180
execute if score $player_rotation cnk.dummy matches 45..135 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90

function cnk:cooking_pot/macro with storage cnk:temp
scoreboard players set @n[type=minecraft:item_display,tag=cnk.cooking_pot] cnk.cook_time 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.cooking_pot] cnk.cook_cooldown 0