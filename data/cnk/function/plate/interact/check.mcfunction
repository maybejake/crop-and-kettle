execute if score $interact_plate_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_plate] run scoreboard players set $interact_plate_check cnk.dummy 1
execute if score $interact_plate_check cnk.dummy matches 1 run function cnk:plate/interact/found