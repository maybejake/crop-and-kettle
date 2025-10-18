execute if block ~ ~ ~ #cnk:player_heads if data block ~ ~ ~ components."minecraft:custom_data".cnk.block align xyz positioned ~0.5 ~0.5 ~0.5 run return run function cnk:blocks/switch
execute positioned ~ ~1 ~ if block ~ ~ ~ #cnk:player_heads if data block ~ ~ ~ components."minecraft:custom_data".cnk.block align xyz positioned ~0.5 ~0.5 ~0.5 run return run function cnk:blocks/switch
execute positioned ~ ~-1 ~ if block ~ ~ ~ #cnk:player_heads if data block ~ ~ ~ components."minecraft:custom_data".cnk.block align xyz positioned ~0.5 ~0.5 ~0.5 run return run function cnk:blocks/switch
execute positioned ~1 ~ ~ if block ~ ~ ~ #cnk:player_heads if data block ~ ~ ~ components."minecraft:custom_data".cnk.block align xyz positioned ~0.5 ~0.5 ~0.5 run return run function cnk:blocks/switch
execute positioned ~-1 ~ ~ if block ~ ~ ~ #cnk:player_heads if data block ~ ~ ~ components."minecraft:custom_data".cnk.block align xyz positioned ~0.5 ~0.5 ~0.5 run return run function cnk:blocks/switch
execute positioned ~ ~ ~1 if block ~ ~ ~ #cnk:player_heads if data block ~ ~ ~ components."minecraft:custom_data".cnk.block align xyz positioned ~0.5 ~0.5 ~0.5 run return run function cnk:blocks/switch
execute positioned ~ ~ ~-1 if block ~ ~ ~ #cnk:player_heads if data block ~ ~ ~ components."minecraft:custom_data".cnk.block align xyz positioned ~0.5 ~0.5 ~0.5 run return run function cnk:blocks/switch

scoreboard players add $raycast_distance cnk.dummy 1

execute if score $raycast_distance cnk.dummy < $reach cnk.dummy positioned ^ ^ ^0.5 run function cnk:blocks/ray