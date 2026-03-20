item modify entity @s contents {"function":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","size":1,"offset":0,"values":[true]}}

execute if entity @s[tag=cnk.stove] run particle minecraft:flame ^ ^0.5 ^-0.3 0.15 0.06 0.15 0 15
execute if entity @s[tag=cnk.stove] run playsound minecraft:block.fire.ambient block @a[distance=..6] ~ ~ ~ 0.2 0.5
execute if entity @s[tag=cnk.stove] run return run playsound minecraft:item.firecharge.use block @a[distance=..6] ~ ~ ~ 0.2 0.8
playsound cnk:block.cooking_pot.cooking block @a[distance=..6] ~ ~ ~ 0.4 1