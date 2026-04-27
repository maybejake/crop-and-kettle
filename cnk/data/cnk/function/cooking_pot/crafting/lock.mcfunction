execute if score $cooking_pot_lock cnk.dummy matches 1 run return fail
scoreboard players set $cooking_pot_lock cnk.dummy 1

execute if entity @s[tag=cnk.stove,tag=!cnk.fizz_oven] run particle minecraft:flame ^ ^0.5 ^-0.4 0.15 0.06 0.15 0 1

execute if score @s cnk.cook_time matches 1 run function cnk:cooking_pot/effects/start_cooking
execute if score @s[tag=cnk.fizz_oven] cnk.cook_time matches 1 run function cnk:cooking_pot/effects/fizz_oven_steam
execute if score @s[tag=cnk.fizz_oven] cnk.cook_time matches 10 run function cnk:cooking_pot/effects/fizz_oven_steam
execute if score @s[tag=cnk.fizz_oven] cnk.cook_time matches 20 run function cnk:cooking_pot/effects/fizz_oven_steam
execute if score @s[tag=cnk.fizz_oven] cnk.cook_time matches 30 run function cnk:cooking_pot/effects/fizz_oven_steam
execute if score @s[tag=cnk.fizz_oven] cnk.cook_time matches 40 run function cnk:cooking_pot/effects/fizz_oven_steam
execute if score @s cnk.cook_time matches 50.. run return 1

# Still cooking, don't unlock
scoreboard players add @s cnk.cook_time 1
return fail