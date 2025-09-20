execute store result storage cnk:temp register.page_number int 1 run scoreboard players get $global_distiller_book_page cnk.dummy

data modify storage cnk:temp register.page_name set value "back"
data modify storage cnk:temp register.dialog_function set value "cnk:distiller_book/pages/back/page"

function cnk:distiller_book/pages/register with storage cnk:temp register