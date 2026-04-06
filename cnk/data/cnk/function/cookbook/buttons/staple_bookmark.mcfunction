scoreboard players reset @s cnk.cookbook_previous_page

execute at @s run playsound cnk:item.cookbook.section_flip neutral @s ~ ~ ~ 1 1

scoreboard players operation $next_page cnk.dummy = $staple_page cnk.dummy
function cnk:cookbook/buttons/check_incomplete_recipe/main

scoreboard players operation @s cnk.cookbook_current_page = $staple_page cnk.dummy
function cnk:cookbook/open