execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,gamemode=!creative,dx=0] run return run scoreboard players set $hit cnk.dummy 1

scoreboard players add $distance cnk.dummy 1
execute if score $distance cnk.dummy < $max_distance cnk.dummy positioned ^ ^ ^0.5 run function cnk:booze/attack/bottle/ray