execute if score $ingredient_count cnk.dummy matches 1 run function cnk:cookbook/builder/1/main
execute if score $ingredient_count cnk.dummy matches 2 run function cnk:cookbook/builder/2/main
execute if score $ingredient_count cnk.dummy matches 3 run function cnk:cookbook/builder/3/main
execute if score $ingredient_count cnk.dummy matches 4 run function cnk:cookbook/builder/4/main
execute if score $ingredient_count cnk.dummy matches 5 run function cnk:cookbook/builder/5/main

function cnk:cookbook/builder/template with storage cnk:temp cookbook.data