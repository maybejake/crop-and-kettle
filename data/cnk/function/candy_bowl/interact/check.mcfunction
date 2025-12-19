execute if score $interact_candy_bowl_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_candy_bowl] run scoreboard players set $interact_candy_bowl_check cnk.dummy 1
execute if score $interact_candy_bowl_check cnk.dummy matches 1 run function cnk:candy_bowl/interact/found