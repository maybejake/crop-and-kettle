playsound cnk:block.cooking_pot.cooking block @a[distance=..6] ~ ~ ~ 0.4 1
data modify entity @s[tag=!cnk.witch_cauldron] item.components."minecraft:item_model" set value "cnk:cooking_pot_closed"
data modify entity @s[tag=cnk.witch_cauldron] item.components."minecraft:item_model" set value "cnk:witch_cauldron_closed"