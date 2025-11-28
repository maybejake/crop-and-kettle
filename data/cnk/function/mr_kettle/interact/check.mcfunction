execute if score $interact_mr_kettle_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_mr_kettle] run scoreboard players set $interact_mr_kettle_check cnk.dummy 1
execute if score $interact_mr_kettle_check cnk.dummy matches 1 run function cnk:mr_kettle/interact/found