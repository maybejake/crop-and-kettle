playsound minecraft:item.book.page_turn block @a ~ ~ ~ 1 1.3

execute if entity @s[tag=cnk.interact_calendar_wine] run return run function cnk:calendar/interact/wine

# not holding wine, just do current date
function cnk:time/get
title @s actionbar {"translate":"item.cnk.calendar.format","with":[{"storage":"cnk:temp","nbt":"time.year","plain":true},{"storage":"cnk:temp","nbt":"time.day","plain":true}]}