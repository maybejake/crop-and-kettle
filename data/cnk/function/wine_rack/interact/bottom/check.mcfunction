execute if score $interact_wine_rack_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_wine_rack] run scoreboard players set $interact_wine_rack_check cnk.dummy 1
execute if score $interact_wine_rack_check cnk.dummy matches 1 run function cnk:wine_rack/interact/bottom/found