playsound cnk:block.cooking_pot.finished block @a[distance=..6] ~ ~ ~ 0.4 1
particle minecraft:poof ~ ~0.3 ~ 0.1 0.1 0.1 0 10
data modify entity @s[tag=!cnk.witch_cauldron] item.components."minecraft:item_model" set value "cnk:cooking_pot_open"
data modify entity @s[tag=cnk.witch_cauldron] item.components."minecraft:item_model" set value "cnk:witch_cauldron_open"

scoreboard players set @s cnk.cook_time 0
scoreboard players set @s cnk.cook_cooldown 15