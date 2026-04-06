execute if score @s[tag=!cnk.on_incomplete_page] cnk.next_incomplete_recipe matches -1 run function cnk:cookbook/incomplete_recipe/calculate_next/main

data remove storage cnk:temp cookbook.incomplete

scoreboard players operation $incomplete_page cnk.dummy = @s cnk.cookbook_current_page
function cnk:cookbook/incomplete_recipe/calculate_previous/loop