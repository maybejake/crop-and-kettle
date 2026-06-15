advancement revoke @s only cnk:hit_calendar

tag @s add cnk.hit_calendar
execute as @e[type=minecraft:interaction,tag=cnk.calendar_interaction,nbt={attack:{}},distance=..20] run function cnk:calendar/hit/on_interaction
tag @s remove cnk.hit_calendar