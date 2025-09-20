advancement revoke @s only cnk:wine/consume_blessing

function cnk:drinks/year_delta/main

execute if score $year cnk.dummy matches 100.. run advancement grant @s only cnk:visible/100_year_wine

scoreboard players set $duration cnk.dummy 60
scoreboard players operation $duration cnk.dummy *= $year cnk.dummy

#minimum duration of 60
scoreboard players add $duration cnk.dummy 60

scoreboard players set $potency cnk.dummy 0
execute if score $year cnk.dummy matches 10.. run scoreboard players operation $potency cnk.dummy = $year cnk.dummy
execute if score $year cnk.dummy matches 10.. run scoreboard players set $10 cnk.dummy 10
execute if score $year cnk.dummy matches 10.. run scoreboard players operation $potency cnk.dummy /= $10 cnk.dummy

#no cap :)

execute store result storage cnk:temp blessing_wine.duration int 1 run scoreboard players get $duration cnk.dummy
execute store result storage cnk:temp blessing_wine.potency int 1 run scoreboard players get $potency cnk.dummy

execute at @s run function cnk:drinks/blessing_wine/effect/effect with storage cnk:temp blessing_wine