advancement revoke @s only cnk:wine/consume_gleaming

function cnk:drinks/year_delta/main

execute if score $year cnk.dummy matches 50.. run advancement grant @s only cnk:visible/50_year_wine

#absorption
scoreboard players set $duration cnk.dummy 60
scoreboard players operation $duration cnk.dummy *= $year cnk.dummy

#minimum duration of 120
scoreboard players add $duration cnk.dummy 120

scoreboard players set $potency cnk.dummy 0
execute if score $year cnk.dummy matches 10.. run scoreboard players operation $potency cnk.dummy = $year cnk.dummy
execute if score $year cnk.dummy matches 10.. run scoreboard players set $10 cnk.dummy 10
execute if score $year cnk.dummy matches 10.. run scoreboard players operation $potency cnk.dummy /= $10 cnk.dummy

#cap at 5
execute if score $potency cnk.dummy matches 6.. run scoreboard players set $potency cnk.dummy 5

execute store result storage cnk:temp gleaming_wine.absorption_duration int 1 run scoreboard players get $duration cnk.dummy
execute store result storage cnk:temp gleaming_wine.absorption_potency int 1 run scoreboard players get $potency cnk.dummy

#regeneration
scoreboard players set $duration cnk.dummy 5
scoreboard players operation $duration cnk.dummy *= $year cnk.dummy

#minimum duration of 5
scoreboard players add $duration cnk.dummy 5

execute store result storage cnk:temp gleaming_wine.regeneration_duration int 1 run scoreboard players get $duration cnk.dummy

execute at @s run function cnk:drinks/gleaming_wine/effect/effect with storage cnk:temp gleaming_wine