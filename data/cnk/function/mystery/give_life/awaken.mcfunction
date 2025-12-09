scoreboard players add @s cnk.timer 1
execute if score @s cnk.timer matches ..8 run return fail

execute if block ~ ~ ~ minecraft:soul_fire run setblock ~ ~ ~ minecraft:air
execute if block ~ ~1 ~ minecraft:soul_fire run setblock ~ ~1 ~ minecraft:air

particle minecraft:soul ~ ~0.2 ~ 0.1 0.1 0.1 0.1 20
particle minecraft:soul_fire_flame ~ ~0.2 ~ 0.1 0.1 0.1 0.1 20
particle minecraft:large_smoke ~ ~0.2 ~ 0.1 0.1 0.1 0.1 20
playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1 1
playsound minecraft:block.trial_spawner.ambient_ominous block @a ~ ~ ~ 1 2

data modify entity @s Fire set value 0s

data modify storage cnk:temp give_life.count set from entity @s Item.count
loot replace entity @s contents loot cnk:food/mystery_meat
data modify entity @s Item.count set from storage cnk:temp give_life.count

# snooping as usual i see