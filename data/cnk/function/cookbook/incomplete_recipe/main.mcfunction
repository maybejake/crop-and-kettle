#this page is incomplete reset scores
execute if entity @s[tag=cnk.on_incomplete_page] run function cnk:cookbook/buttons/check_incomplete_recipe/reset

#scores have been reset elsewhere, or were never set, recalculate
execute unless score @s cnk.previous_incomplete_recipe matches -2.. run function cnk:cookbook/incomplete_recipe/calculate_previous/main
execute unless score @s cnk.next_incomplete_recipe matches -2.. run function cnk:cookbook/incomplete_recipe/calculate_next/main