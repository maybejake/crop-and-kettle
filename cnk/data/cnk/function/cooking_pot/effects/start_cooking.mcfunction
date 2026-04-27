item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}

execute if entity @s[tag=cnk.stove] run playsound minecraft:block.fire.ambient block @a[distance=..6] ~ ~ ~ 0.2 0.5
execute if entity @s[tag=cnk.stove] run playsound minecraft:item.firecharge.use block @a[distance=..6] ~ ~ ~ 0.2 0.8
execute if entity @s[tag=cnk.fizz_oven] run playsound minecraft:block.decorated_pot.place block @a ~ ~ ~ 0.4 0.7
execute if entity @s[tag=cnk.fizz_oven] run return run playsound minecraft:block.copper_door.close block @a ~ ~ ~ 0.4 0.6
execute if entity @s[tag=cnk.stove] run return run particle minecraft:flame ^ ^0.5 ^-0.3 0.15 0.06 0.15 0 15
playsound cnk:block.cooking_pot.cooking block @a[distance=..6] ~ ~ ~ 0.4 1