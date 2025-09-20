advancement revoke @s only cnk:wine/consume_chorus

function cnk:drinks/year_delta/main

execute if score $year cnk.dummy matches 100.. run advancement grant @s only cnk:visible/100_year_wine

execute if score $year cnk.dummy matches 50.. run advancement grant @s only cnk:visible/drink_chorus_wine_far

scoreboard players set $max_distance cnk.dummy 32
scoreboard players operation $max_distance cnk.dummy *= $year cnk.dummy

#always teleport at least 32
scoreboard players add $max_distance cnk.dummy 32

#teleport distance is always 95%-100%
scoreboard players operation $min_distance_delta cnk.dummy = $teleport_distance cnk.dummy
scoreboard players set $20 cnk.dummy 20
scoreboard players operation $min_distance_delta cnk.dummy /= $20 cnk.dummy

scoreboard players operation $min_distance cnk.dummy = $teleport_distance cnk.dummy
scoreboard players operation $min_distance cnk.dummy -= $min_distance_delta cnk.dummy

execute store result storage cnk:temp chorus_wine.max_distance int 1 run scoreboard players get $max_distance cnk.dummy
execute store result storage cnk:temp chorus_wine.min_distance int 1 run scoreboard players get $min_distance cnk.dummy
execute at @s run function cnk:drinks/chorus_wine/effect/teleport with storage cnk:temp chorus_wine