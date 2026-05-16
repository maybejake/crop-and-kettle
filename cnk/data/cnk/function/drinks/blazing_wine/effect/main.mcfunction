advancement revoke @s only cnk:wine/consume_blazing

execute if data storage cnk:admin settings{blazing_wine_disabled:true} run return fail

function cnk:drinks/year_delta/main

execute if score $year cnk.dummy matches 50.. run advancement grant @s only cnk:visible/50_year_wine

function cnk:drinks/check_oldest_wine

scoreboard players set $duration cnk.dummy 60
scoreboard players operation $duration cnk.dummy *= $year cnk.dummy

#minimum duration of 60
scoreboard players add $duration cnk.dummy 60

execute store result storage cnk:temp blazing_wine.duration int 1 run scoreboard players get $duration cnk.dummy
execute at @s run function cnk:drinks/blazing_wine/effect/effect with storage cnk:temp blazing_wine