advancement revoke @s only cnk:interact_calendar

scoreboard players set $interact_calendar_check cnk.dummy 0

tag @s add cnk.interact_calendar
execute if predicate cnk:wine run tag @s add cnk.interact_calendar_wine
execute as @e[type=minecraft:interaction,tag=cnk.calendar_interaction,distance=..20] run function cnk:calendar/interact/check
tag @s remove cnk.interact_calendar
tag @s remove cnk.interact_calendar_wine