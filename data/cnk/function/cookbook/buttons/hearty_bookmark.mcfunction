execute at @s run playsound cnk:item.cookbook.section_flip neutral @s ~ ~ ~ 1 1

scoreboard players operation @s cnk.cookbook_current_page = $hearty_page cnk.dummy
function cnk:cookbook/open