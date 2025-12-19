execute if score $interact_gift_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_gift] run scoreboard players set $interact_gift_check cnk.dummy 1
execute if score $interact_gift_check cnk.dummy matches 1 run function cnk:gift/interact/found