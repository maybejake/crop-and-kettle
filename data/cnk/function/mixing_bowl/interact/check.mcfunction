execute if score $interact_mixing_bowl_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_mixing_bowl] run scoreboard players set $interact_mixing_bowl_check cnk.dummy 1
execute if score $interact_mixing_bowl_check cnk.dummy matches 1 run function cnk:mixing_bowl/interact/found