execute if data storage cnk:temp register.ingredients[0] run function cnk:cookbook/pages/check_font with storage cnk:temp register.ingredients[0]
execute if data storage cnk:temp register.ingredients[0] run data modify storage cnk:temp register.ingredients[0].font set from storage cnk:temp register.temp_font

execute if data storage cnk:temp register.ingredients[1] run function cnk:cookbook/pages/check_font with storage cnk:temp register.ingredients[1]
execute if data storage cnk:temp register.ingredients[1] run data modify storage cnk:temp register.ingredients[1].font set from storage cnk:temp register.temp_font

execute if data storage cnk:temp register.ingredients[2] run function cnk:cookbook/pages/check_font with storage cnk:temp register.ingredients[2]
execute if data storage cnk:temp register.ingredients[2] run data modify storage cnk:temp register.ingredients[2].font set from storage cnk:temp register.temp_font

execute if data storage cnk:temp register.ingredients[3] run function cnk:cookbook/pages/check_font with storage cnk:temp register.ingredients[3]
execute if data storage cnk:temp register.ingredients[3] run data modify storage cnk:temp register.ingredients[3].font set from storage cnk:temp register.temp_font

execute if data storage cnk:temp register.ingredients[4] run function cnk:cookbook/pages/check_font with storage cnk:temp register.ingredients[4]
execute if data storage cnk:temp register.ingredients[4] run data modify storage cnk:temp register.ingredients[4].font set from storage cnk:temp register.temp_font

data modify storage cnk:temp register.font_check.key set from storage cnk:temp register.page_name
data modify storage cnk:temp register.font_check.font set from storage cnk:temp register.recipe_icon_font
function cnk:cookbook/pages/check_font with storage cnk:temp register.font_check
data modify storage cnk:temp register.recipe_icon_font set from storage cnk:temp register.temp_font