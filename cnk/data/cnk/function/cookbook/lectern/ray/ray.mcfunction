execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.cookbook run return run function cnk:cookbook/lectern/ray/hit
execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.distiller_book run return run function cnk:cookbook/lectern/ray/hit
execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.foodie_book run return run function cnk:cookbook/lectern/ray/hit

scoreboard players add $distance cnk.dummy 1
execute if score $distance cnk.dummy < $reach cnk.dummy positioned ^ ^ ^0.01 run function cnk:cookbook/lectern/ray/ray