execute if block ~ ~ ~ #cnk:chest align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:marker run return run function cnk:insert_loot/delay

scoreboard players add $distance cnk.dummy 1
execute if score $distance cnk.dummy < $reach cnk.dummy positioned ^ ^ ^0.01 run function cnk:insert_loot/ray
