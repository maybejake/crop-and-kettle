execute if score $cooking_pot_lock cnk.dummy matches 1 run return fail
scoreboard players set $cooking_pot_lock cnk.dummy 1
execute if score @s cnk.cook_time matches 0 run function cnk:cooking_pot/effects/start_cooking
execute if score @s cnk.cook_time matches 50.. run return 1

# Still cooking, don't unlock
scoreboard players add @s cnk.cook_time 1
return fail