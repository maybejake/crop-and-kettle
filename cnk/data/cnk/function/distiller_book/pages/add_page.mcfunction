$data modify storage cnk:distiller_book pages.$(page_number) set from storage cnk:temp register

#advance global
scoreboard players add $global_distiller_book_page cnk.dummy 1

#clear storage
data remove storage cnk:temp register