data modify storage cnk:temp distiller_book.data.page_name set from storage cnk:temp distiller_book.current_page.page_name

data modify storage cnk:temp distiller_book.data.slot_1 set from storage cnk:temp distiller_book.current_page.ingredients[0].key
data modify storage cnk:temp distiller_book.data.font_1 set from storage cnk:temp distiller_book.current_page.ingredients[0].font

execute if score $ingredient_count cnk.dummy matches ..1 run return fail
data modify storage cnk:temp distiller_book.data.slot_2 set from storage cnk:temp distiller_book.current_page.ingredients[1].key
data modify storage cnk:temp distiller_book.data.font_2 set from storage cnk:temp distiller_book.current_page.ingredients[1].font

execute if score $ingredient_count cnk.dummy matches ..2 run return fail
data modify storage cnk:temp distiller_book.data.slot_3 set from storage cnk:temp distiller_book.current_page.ingredients[2].key
data modify storage cnk:temp distiller_book.data.font_3 set from storage cnk:temp distiller_book.current_page.ingredients[2].font

execute if score $ingredient_count cnk.dummy matches ..3 run return fail
data modify storage cnk:temp distiller_book.data.slot_4 set from storage cnk:temp distiller_book.current_page.ingredients[3].key
data modify storage cnk:temp distiller_book.data.font_4 set from storage cnk:temp distiller_book.current_page.ingredients[3].font

execute if score $ingredient_count cnk.dummy matches ..4 run return fail
data modify storage cnk:temp distiller_book.data.slot_5 set from storage cnk:temp distiller_book.current_page.ingredients[4].key
data modify storage cnk:temp distiller_book.data.font_5 set from storage cnk:temp distiller_book.current_page.ingredients[4].font

execute if score $ingredient_count cnk.dummy matches ..5 run return fail
data modify storage cnk:temp distiller_book.data.slot_6 set from storage cnk:temp distiller_book.current_page.ingredients[5].key
data modify storage cnk:temp distiller_book.data.font_6 set from storage cnk:temp distiller_book.current_page.ingredients[5].font

execute if score $ingredient_count cnk.dummy matches ..6 run return fail
data modify storage cnk:temp distiller_book.data.slot_7 set from storage cnk:temp distiller_book.current_page.ingredients[6].key
data modify storage cnk:temp distiller_book.data.font_7 set from storage cnk:temp distiller_book.current_page.ingredients[6].font