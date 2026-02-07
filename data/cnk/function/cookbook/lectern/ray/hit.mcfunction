execute align xyz summon minecraft:marker run function cnk:cookbook/lectern/ray/store_pos
execute store result score @s cnk.lectern_x run data get storage cnk:temp lectern.pos[0]
execute store result score @s cnk.lectern_y run data get storage cnk:temp lectern.pos[1]
execute store result score @s cnk.lectern_z run data get storage cnk:temp lectern.pos[2]

tag @s add cnk.via_lectern

execute if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.cookbook run return run tag @s add cnk.lectern_cookbook_open
execute if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.distiller_book run return run tag @s add cnk.lectern_distiller_book_open
execute if data block ~ ~ ~ Book.components."minecraft:custom_data".cnk.foodie_book run return run tag @s add cnk.lectern_foodie_book_open