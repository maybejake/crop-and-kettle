advancement revoke @s only cnk:interact_calendar

tag @s add cnk.interact_calendar
execute if predicate cnk:wine run tag @s add cnk.interact_calendar_wine
execute as @e[type=minecraft:interaction,tag=cnk.calendar_interaction,nbt={interaction:{}},distance=..20] run function cnk:calendar/interact/on_interaction
tag @s remove cnk.interact_calendar
tag @s remove cnk.interact_calendar_wine