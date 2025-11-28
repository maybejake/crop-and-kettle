data remove entity @s interaction

execute at @p[tag=cnk.interact_calendar] run playsound minecraft:item.book.page_turn block @a ~ ~ ~ 1 1.3

execute as @p[tag=cnk.interact_calendar] if entity @s[tag=cnk.interact_calendar_wine] run return run function cnk:calendar/interact/wine

execute store result score $time cnk.dummy run time query gametime
function cnk:time/get

function cnk:calendar/interact/macro with storage cnk:temp time