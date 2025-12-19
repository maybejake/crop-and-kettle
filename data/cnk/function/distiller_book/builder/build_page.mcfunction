execute if score $ingredient_count cnk.dummy matches 1 run function cnk:distiller_book/builder/1/main
execute if score $ingredient_count cnk.dummy matches 2 run function cnk:distiller_book/builder/2/main
execute if score $ingredient_count cnk.dummy matches 3 run function cnk:distiller_book/builder/3/main
execute if score $ingredient_count cnk.dummy matches 4 run function cnk:distiller_book/builder/4/main
execute if score $ingredient_count cnk.dummy matches 5 run function cnk:distiller_book/builder/5/main

function cnk:distiller_book/builder/template with storage cnk:temp distiller_book.data