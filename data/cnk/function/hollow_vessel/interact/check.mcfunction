execute if score $interact_hollow_vessel_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_hollow_vessel] run scoreboard players set $interact_hollow_vessel_check cnk.dummy 1
execute if score $interact_hollow_vessel_check cnk.dummy matches 1 run function cnk:hollow_vessel/interact/found