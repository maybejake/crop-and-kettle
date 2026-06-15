playsound minecraft:item.book.page_turn block @a ~ ~ ~ 1 1.3

execute if entity @s[tag=cnk.interact_calendar_wine] run return run function cnk:calendar/interact/wine

# not holding wine, just do current date
execute store result score $time cnk.dummy run time query gametime
function cnk:time/get

function cnk:calendar/interact/macro with storage cnk:temp time