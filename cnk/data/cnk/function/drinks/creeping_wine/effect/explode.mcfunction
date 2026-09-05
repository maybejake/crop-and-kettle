function cnk:time/delta
data modify storage cnk:temp wine.power set compute default integer cnk:drinks/creeping_wine/power
data modify storage cnk:temp wine.x set compute default integer cnk:drinks/creeping_wine/position
data modify storage cnk:temp wine.y set compute default integer cnk:drinks/creeping_wine/position
data modify storage cnk:temp wine.z set compute default integer cnk:drinks/creeping_wine/position
function cnk:drinks/creeping_wine/effect/macro with storage cnk:temp wine

# add tag to allow offsets
tag @s add cnk.creeping_wine_marker_second

# if less than 10 years, don't loop
execute if score $year cnk.dummy matches ..10 run return run kill @s

# add 10 years then loop
execute store result score @s cnk.wine_time run compute entity @s integer {"type":"minecraft:add","inputs":[{"type":"minecraft:score","target":"this","score":"cnk.wine_time"},"cnk:time/year_ticks"]}
function cnk:drinks/creeping_wine/effect/explode
