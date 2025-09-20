kill @s

playsound cnk:item.mr_kettle.squeak block @a ~ ~ ~ 1 1

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=smithed.block,distance=..0.1] at @s run return run loot spawn ~ ~ ~ loot cnk:zzz_secret/mr_kettle

data modify storage cnk:temp rotation set value 0
execute store result score $player_rotation cnk.dummy run data get entity @p[advancements={cnk:item_frame=true}] Rotation[0] 100

# north
execute if score $player_rotation cnk.dummy matches 16875..18000 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0
execute if score $player_rotation cnk.dummy matches -18000..-16875 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 0

# north north east
execute if score $player_rotation cnk.dummy matches 14625..16875 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -22.5

# north east
execute if score $player_rotation cnk.dummy matches 12375..14625 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -45

# east north east
execute if score $player_rotation cnk.dummy matches 10125..12375 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -67.5

# east
execute if score $player_rotation cnk.dummy matches 7875..10125 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -90

# east south east
execute if score $player_rotation cnk.dummy matches 5625..7875 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -112.5

# south east
execute if score $player_rotation cnk.dummy matches 3375..5625 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -135

# south south east
execute if score $player_rotation cnk.dummy matches 1125..3375 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value -157.5

# south
execute if score $player_rotation cnk.dummy matches -1125..1125 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 180

# south south west
execute if score $player_rotation cnk.dummy matches -3375..-1125 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 157.5

# south west
execute if score $player_rotation cnk.dummy matches -5625..-3375 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 135

# west south west
execute if score $player_rotation cnk.dummy matches -7875..-5625 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 112.5

# west
execute if score $player_rotation cnk.dummy matches -10125..-7875 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 90

# west north west
execute if score $player_rotation cnk.dummy matches -12375..-10125 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 67.5

# north west
execute if score $player_rotation cnk.dummy matches -14625..-12375 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 45

# north north west
execute if score $player_rotation cnk.dummy matches -16875..-14625 align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage cnk:temp rotation set value 22.5

function cnk:mr_kettle/macro with storage cnk:temp
scoreboard players set @n[type=minecraft:item_display,tag=cnk.mr_kettle] cnk.hit_count 0
scoreboard players set @n[type=minecraft:item_display,tag=cnk.mr_kettle] cnk.hit_timer 0