scoreboard players reset @s cnk.previous_incomplete_recipe
scoreboard players reset @s cnk.next_incomplete_recipe

scoreboard players operation @s cnk.cookbook_current_page = @s cnk.cookbook_previous_page
scoreboard players reset @s cnk.cookbook_previous_page

function cnk:cookbook/open