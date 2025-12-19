scoreboard players reset @s cnk.cookbook_previous_page

execute at @s run playsound cnk:item.cookbook.section_flip neutral @s ~ ~ ~ 1 1

scoreboard players set @s cnk.cookbook_current_page 1
function cnk:cookbook/open