scoreboard players set $global_distiller_book_page cnk.dummy 1
data modify storage cnk:distiller_book pages set value {}
data modify storage cnk:distiller_book page_lookup set value {}

#clear storage
data remove storage cnk:temp register

# register internal pages
function #cnk:distiller_book/pages

# register addon pages
function #cnk:addons/distiller_book/pages

# register back page
function cnk:distiller_book/pages/back/register