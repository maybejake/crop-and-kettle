data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:tnt"}].Slot
function cnk:recipes/remove with storage cnk:temp cooking_pot

execute at @s run playsound cnk:block.cooking_pot.finished block @a[distance=..6] ~ ~ ~ 0.4 1
execute at @s run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 1
execute at @s run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 5
execute at @s run particle minecraft:large_smoke ~ ~ ~ 0.4 0.4 0.4 0.1 20
execute at @s run particle minecraft:flame ~ ~ ~ 1 1 1 0.01 20
execute at @s run particle minecraft:poof ~ ~0.3 ~ 0.1 0.1 0.1 0 10

execute at @s run loot spawn ~ ~0.25 ~ loot cnk:zzz_secret/pan
execute at @s positioned ~ ~0.25 ~ as @e[type=minecraft:item,distance=..0.1] run data modify entity @s Motion set value [0.0, 0.5, 0.0]

item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}

data modify entity @s item.components."minecraft:item_model" set value "cnk:panless_stove"
tag @s add cnk.panless_stove

scoreboard players reset @s cnk.cook_time
scoreboard players set @s cnk.cook_cooldown 15