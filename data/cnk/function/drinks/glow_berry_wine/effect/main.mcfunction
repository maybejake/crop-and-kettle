advancement revoke @s only cnk:wine/consume_glow_berry

function cnk:drinks/year_delta/main

execute if score $year cnk.dummy matches 50.. run advancement grant @s only cnk:visible/50_year_wine

scoreboard players set $range cnk.dummy 2
scoreboard players operation $range cnk.dummy *= $year cnk.dummy

#minimum range of 8
scoreboard players add $range cnk.dummy 8

execute store result storage cnk:temp glow_berry_wine.range int 1 run scoreboard players get $range cnk.dummy

tag @s add cnk.glow_berry_wine
execute at @s run function cnk:drinks/glow_berry_wine/effect/glow with storage cnk:temp glow_berry_wine
tag @s remove cnk.glow_berry_wine