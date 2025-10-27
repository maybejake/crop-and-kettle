advancement revoke @s only cnk:wine/consume_diving

function cnk:drinks/year_delta/main

execute if score $year cnk.dummy matches 50.. run advancement grant @s only cnk:visible/50_year_wine

scoreboard players set $duration cnk.dummy 60
scoreboard players operation $duration cnk.dummy *= $year cnk.dummy

#minimum duration of 60
scoreboard players add $duration cnk.dummy 60

execute store result storage cnk:temp diving_wine.duration int 1 run scoreboard players get $duration cnk.dummy
execute store result storage cnk:temp diving_wine.potency int 1 run scoreboard players get $potency cnk.dummy

execute at @s run function cnk:drinks/diving_wine/effect/effect with storage cnk:temp diving_wine