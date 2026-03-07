# not more than 1, tick automatically
execute unless score $crop_tick_modifier cnk.dummy matches 2.. run return 1

scoreboard players add $crop_tick_check cnk.dummy 1
execute if score $crop_tick_check cnk.dummy = $crop_tick_modifier cnk.dummy run return run scoreboard players reset $crop_tick_check cnk.dummy

# not met interval, fail
return fail