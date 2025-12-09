execute if score $interact_calendar_check cnk.dummy matches 1 run return fail

execute on target if entity @s[tag=cnk.interact_calendar] run scoreboard players set $interact_calendar_check cnk.dummy 1
execute if score $interact_calendar_check cnk.dummy matches 1 run function cnk:calendar/interact/found