advancement revoke @s only cnk:wine/consume_grape

function cnk:drinks/year_delta/main

execute if score $year cnk.dummy matches 50.. run advancement grant @s only cnk:visible/50_year_wine

scoreboard players set $duration cnk.dummy 30
scoreboard players operation $duration cnk.dummy *= $year cnk.dummy

#minimum duration of 30
scoreboard players add $duration cnk.dummy 30

execute store result storage cnk:temp grape_wine.duration int 1 run scoreboard players get $duration cnk.dummy
execute at @s run function cnk:drinks/grape_wine/effect/effect with storage cnk:temp grape_wine