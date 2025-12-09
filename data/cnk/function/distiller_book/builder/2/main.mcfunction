data modify storage cnk:temp distiller_book.ingredient.flag set from storage cnk:temp distiller_book.data.slot_1
data modify storage cnk:temp distiller_book.ingredient.font set from storage cnk:temp distiller_book.data.font_1
function cnk:distiller_book/builder/resolve_ingredient with storage cnk:temp distiller_book.ingredient
data modify storage cnk:temp distiller_book.ingredient.1 set from storage cnk:temp distiller_book.ingredient.output

data modify storage cnk:temp distiller_book.ingredient.flag set from storage cnk:temp distiller_book.data.slot_2
data modify storage cnk:temp distiller_book.ingredient.font set from storage cnk:temp distiller_book.data.font_2
function cnk:distiller_book/builder/resolve_ingredient with storage cnk:temp distiller_book.ingredient
data modify storage cnk:temp distiller_book.ingredient.2 set from storage cnk:temp distiller_book.ingredient.output

function cnk:distiller_book/builder/2/merge with storage cnk:temp distiller_book.ingredient