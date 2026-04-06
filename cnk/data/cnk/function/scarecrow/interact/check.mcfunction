execute if score $interact_scarecrow_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_scarecrow] run scoreboard players set $interact_scarecrow_check cnk.dummy 1
execute if score $interact_scarecrow_check cnk.dummy matches 1 run function cnk:scarecrow/interact/found