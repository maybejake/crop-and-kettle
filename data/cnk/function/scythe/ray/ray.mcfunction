execute if block ~ ~ ~ #cnk:crops align xyz positioned ~0.5 ~0.5 ~0.5 run return run function cnk:scythe/ray/hit
execute unless block ~ ~ ~ #cnk:blocks run return fail
scoreboard players add $raycast_distance cnk.dummy 1

execute if score $raycast_distance cnk.dummy < $reach cnk.dummy positioned ^ ^ ^0.2 run function cnk:scythe/ray/ray