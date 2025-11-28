function cnk:recipes/remove_generic/meat

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:spider_eye"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:bone"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

loot spawn ~ ~0.25 ~ loot cnk:food/dead_meat

playsound minecraft:block.trial_spawner.ambient_ominous block @a[distance=..6] ~ ~ ~ 1 2
playsound cnk:block.cooking_pot.finished block @a[distance=..6] ~ ~ ~ 0.4 1
particle minecraft:large_smoke ~ ~0.3 ~ 0.1 0.1 0.1 0 10
particle minecraft:trial_spawner_detection_ominous ~ ~0.3 ~ 0.16 0.16 0.16 0 30
data modify entity @s item.components."minecraft:item_model" set value "cnk:cooking_pot_open"

scoreboard players set @s cnk.cook_time 0
scoreboard players set @s cnk.cook_cooldown 15