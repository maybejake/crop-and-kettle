execute if entity @s[tag=cnk.on_incomplete_page] run scoreboard players operation @s cnk.next_incomplete_recipe = @s cnk.cookbook_current_page

scoreboard players reset @s cnk.cookbook_previous_page

scoreboard players remove @s cnk.cookbook_current_page 1
function cnk:cookbook/open