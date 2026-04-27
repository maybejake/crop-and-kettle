execute at @s run playsound cnk:block.cooking_pot.finished block @a[distance=..6] ~ ~ ~ 0.4 1
item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[false]}}

scoreboard players reset @s cnk.cook_time
scoreboard players set @s cnk.cook_cooldown 15

execute if entity @s[tag=cnk.fizz_oven] run playsound minecraft:block.decorated_pot.place block @a ~ ~ ~ 0.4 0.7
execute if entity @s[tag=cnk.fizz_oven] run playsound minecraft:block.copper_door.open block @a ~ ~ ~ 0.4 0.6
execute if entity @s[tag=cnk.stove] run function cnk:cooking_pot/crafting/stove_motion
execute if entity @s[tag=cnk.stove] run return run particle minecraft:poof ~ ~0.4 ~ 0.1 0.1 0.1 0 4
particle minecraft:poof ~ ~0.3 ~ 0.1 0.1 0.1 0 10