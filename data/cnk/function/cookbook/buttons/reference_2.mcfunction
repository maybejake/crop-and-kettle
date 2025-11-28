execute unless score @s cnk.cookbook_previous_page matches 1.. run scoreboard players operation @s cnk.cookbook_previous_page = @s cnk.cookbook_current_page

execute store result storage cnk:temp cookbook.current_page int 1 run scoreboard players get @s cnk.cookbook_current_page
function cnk:cookbook/get_page_data with storage cnk:temp cookbook

data modify storage cnk:temp cookbook.reference set from storage cnk:temp cookbook.current_page_data.ingredients[1].key

data remove storage cnk:temp cookbook.reference_page
function cnk:cookbook/lookup_page with storage cnk:temp cookbook
execute unless data storage cnk:temp cookbook.reference_page run return fail

execute store result score @s cnk.cookbook_current_page run data get storage cnk:temp cookbook.reference_page
function cnk:cookbook/open