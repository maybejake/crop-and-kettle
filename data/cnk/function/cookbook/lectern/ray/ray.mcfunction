execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.cookbook run return run tag @s add cnk.lectern_cookbook_open
execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.distiller_book run return run tag @s add cnk.lectern_distiller_book_open
execute if block ~ ~ ~ minecraft:lectern if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.foodie_book run return run tag @s add cnk.lectern_foodie_book_open

scoreboard players add $distance cnk.dummy 1
execute if score $distance cnk.dummy < $reach cnk.dummy positioned ^ ^ ^0.01 run function cnk:cookbook/lectern/ray/ray