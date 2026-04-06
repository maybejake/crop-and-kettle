execute if score $interact_pail_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_pail] run scoreboard players set $interact_pail_check cnk.dummy 1
execute if score $interact_pail_check cnk.dummy matches 1 at @s run function cnk:pail/interact/found