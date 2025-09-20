execute if score @s cnk.break_short_grass matches 1.. at @s run function cnk:break_grass/main
execute if score @s cnk.break_tall_grass matches 1.. at @s run function cnk:break_grass/main

execute if score @s cnk.rotten_tomato matches 1.. at @s run function cnk:produce/rotten_tomato/check
execute if score @s cnk.creeping_wine matches 1.. at @s run function cnk:drinks/creeping_wine/effect/check

execute if score @s cnk.drop_food matches 1.. run function cnk:mystery/give_life/search

execute if score @s cnk.use_book matches 1.. run function cnk:cookbook/check

execute if entity @s[tag=cnk.lectern_cookbook_open] run function cnk:cookbook/lectern/open
execute if entity @s[tag=cnk.lectern_distiller_book_open] run function cnk:distiller_book/lectern/open
execute if entity @s[tag=cnk.lectern_foodie_book_open] run function cnk:foodie_book/lectern/open
execute if score @s cnk.use_lectern matches 1.. run function cnk:cookbook/lectern/check

execute if score @s cnk.cookbook_buttons matches 1.. run function cnk:cookbook/buttons/switch
execute if score @s cnk.distiller_book_buttons matches 1.. run function cnk:distiller_book/buttons/switch
execute if score @s cnk.foodie_book_buttons matches 1.. run function cnk:foodie_book/close

execute if score @s cnk.settings matches 1.. run function cnk:settings/switch