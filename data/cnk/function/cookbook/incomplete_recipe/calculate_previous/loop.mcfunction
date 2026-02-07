scoreboard players remove $incomplete_page cnk.dummy 1

#at the beginning of the book, stop and set score to -1
execute if score $incomplete_page cnk.dummy matches ..5 run return run scoreboard players set @s cnk.previous_incomplete_recipe -1

#get page flag
execute store result storage cnk:temp incomplete.page_number int 1 run scoreboard players get $incomplete_page cnk.dummy
function cnk:cookbook/incomplete_recipe/get_page with storage cnk:temp incomplete

#if not recipe page, skip
execute unless data storage cnk:temp incomplete.page.ingredients run return run function cnk:cookbook/incomplete_recipe/calculate_previous/loop

#static title, skip
execute if data storage cnk:temp incomplete.page.static_title run return run function cnk:cookbook/incomplete_recipe/calculate_previous/loop

#check flag
execute store result score $incomplete_check cnk.dummy run function cnk:cookbook/incomplete_recipe/check_flag with storage cnk:temp incomplete.page

#missing from database, set as next incomplete recipe
execute if score $incomplete_check cnk.dummy matches 0 run return run scoreboard players operation @s cnk.previous_incomplete_recipe = $incomplete_page cnk.dummy

#found in database, loop
function cnk:cookbook/incomplete_recipe/calculate_previous/loop