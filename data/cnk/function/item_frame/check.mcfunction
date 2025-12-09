execute if entity @s[tag=cnk.crop_setup] run return run function cnk:item_frame/seeds
execute if entity @s[tag=cnk.cooking_pot_setup] run return run loot spawn ~ ~ ~ loot cnk:tools/cooking_pot
execute if entity @s[tag=cnk.cutting_board_setup] run return run loot spawn ~ ~ ~ loot cnk:tools/cutting_board
execute if entity @s[tag=cnk.mixing_bowl_setup] run return run loot spawn ~ ~ ~ loot cnk:tools/mixing_bowl
execute if entity @s[tag=cnk.faucet_setup] run return run loot spawn ~ ~ ~ loot cnk:tools/faucet
execute if entity @s[tag=cnk.distiller_setup] run return run loot spawn ~ ~ ~ loot cnk:tools/distiller
execute if entity @s[tag=cnk.basin_setup] run return run loot spawn ~ ~ ~ loot cnk:tools/basin
execute if entity @s[tag=cnk.calendar_setup] run return run loot spawn ~ ~ ~ loot cnk:tools/calendar
execute if entity @s[tag=cnk.wine_rack_setup] run return run loot spawn ~ ~ ~ loot cnk:tools/wine_rack
execute if entity @s[tag=cnk.mr_kettle_setup] run return run function cnk:mr_kettle/place
execute if entity @s[tag=cnk.booze_head_setup] run return run function cnk:booze_head/place
return fail