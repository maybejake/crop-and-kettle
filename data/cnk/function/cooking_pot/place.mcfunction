playsound minecraft:block.iron.place block @a ~ ~ ~ 1 1
playsound cnk:block.cooking_pot.idling block @a[distance=..6] ~ ~ ~ 0.2 1

data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 1350..1800 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1800..-1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180
execute if score $rotation cnk.dummy matches -1350..-450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90
execute if score $rotation cnk.dummy matches -450..450 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $rotation cnk.dummy matches 450..1350 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 90

execute if data block ~ ~ ~ components."minecraft:custom_data".cnk.block.witch_cauldron run function cnk:cooking_pot/witch_macro with storage cnk:temp
execute unless data block ~ ~ ~ components."minecraft:custom_data".cnk.block.witch_cauldron run function cnk:cooking_pot/macro with storage cnk:temp

setblock ~ ~ ~ minecraft:hopper[facing=down,enabled=false]{CustomName:{translate:gui.cnk.cooking_pot,font:"cnk:gui",color:"white"},TransferCooldown:1000} replace

scoreboard players set @n[type=minecraft:item_display,tag=cnk.cooking_pot] cnk.cook_time 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.cooking_pot] cnk.cook_cooldown 0