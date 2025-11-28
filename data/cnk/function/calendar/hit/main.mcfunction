advancement revoke @s only cnk:hit_calendar

scoreboard players set $hit_calendar_check cnk.dummy 0

tag @s add cnk.hit_calendar
execute as @e[type=minecraft:interaction,tag=cnk.calendar_interaction,distance=..20] run function cnk:calendar/hit/check
tag @s remove cnk.hit_calendar