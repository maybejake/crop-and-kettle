item replace entity @s weapon.mainhand from entity @s armor.chest
data modify entity @s DeathTime set value 19s

execute if entity @s[predicate=cnk:on_ground] if entity @p[distance=..2,gamemode=!spectator,gamemode=!creative] run tag @s add cnk.spin_attack
execute if entity @s[tag=cnk.spin_attack] run return run function cnk:scarecrow/entity/spin

execute if entity @s[predicate=cnk:on_ground] run scoreboard players add @s cnk.timer 1
execute if entity @s[predicate=cnk:on_ground] if score @s cnk.timer matches 3 run function cnk:scarecrow/entity/jump

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:10}} at @s anchored eyes run function cnk:scarecrow/entity/tick_10

execute if entity @p[distance=..24,gamemode=!spectator,gamemode=!creative] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:100}} at @s anchored eyes positioned ^ ^0.5 ^ run function cnk:scarecrow/entity/missile/spawn

execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:100}} run playsound minecraft:entity.creaking.ambient hostile @a ~ ~ ~ 1 1.7

execute store result score $hurt_time cnk.dummy run data get entity @s HurtTime
execute unless score $hurt_time cnk.dummy matches 0 run function cnk:scarecrow/entity/damaged