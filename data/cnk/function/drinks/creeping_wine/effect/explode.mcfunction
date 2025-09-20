execute if score @s cnk.wine_time_cooldown matches 0.. run return run scoreboard players remove @s cnk.wine_time_cooldown 1

function cnk:drinks/year_delta/main

#add 10 years
scoreboard players add @s cnk.wine_time 3840000
execute if score $year cnk.dummy matches 10.. run data modify storage cnk:temp time.year set value 10
execute if score $year cnk.dummy matches 0 run data modify storage cnk:temp time.year set value 1

data modify storage cnk:temp creeping_wine.year set from storage cnk:temp time.year
execute store result storage cnk:temp creeping_wine.x int 1 run random value -2..2
execute store result storage cnk:temp creeping_wine.y int 1 run random value -2..2
execute store result storage cnk:temp creeping_wine.z int 1 run random value -2..2

function cnk:drinks/creeping_wine/effect/macro with storage cnk:temp creeping_wine
scoreboard players set @s cnk.wine_time_cooldown 1

execute store result score $time cnk.dummy run time query gametime
execute if score @s cnk.wine_time >= $time cnk.dummy run kill @s