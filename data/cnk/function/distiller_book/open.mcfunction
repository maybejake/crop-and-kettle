#ensure trigger is enabled
scoreboard players enable @s cnk.distiller_book_buttons

#clear storage
data remove storage cnk:temp distiller_book

execute at @s run playsound item.book.page_turn neutral @s ~ ~ ~ 1 1

#make sure current page is set to something
execute unless score @s cnk.distiller_book_current_page matches 1.. run scoreboard players set @s cnk.distiller_book_current_page 1

#store number length for alignment
execute if score @s cnk.distiller_book_current_page matches 1..9 run data modify storage cnk:temp distiller_book.data.page_number_width set value "single"
execute if score @s cnk.distiller_book_current_page matches 10..99 run data modify storage cnk:temp distiller_book.data.page_number_width set value "double"
execute if score @s cnk.distiller_book_current_page matches 100.. run data modify storage cnk:temp distiller_book.data.page_number_width set value "triple"

#get page
execute store result storage cnk:temp distiller_book.data.current_page int 1 run scoreboard players get @s cnk.distiller_book_current_page
function cnk:distiller_book/get_page with storage cnk:temp distiller_book.data

scoreboard players set $ingredient_count cnk.dummy 0
execute store result score $ingredient_count cnk.dummy run data get storage cnk:temp distiller_book.current_page.ingredients

#store flags
execute unless score $ingredient_count cnk.dummy matches 0 run function cnk:distiller_book/auto_resolve

#copy some data
data modify storage cnk:temp distiller_book.data.icon_font set from storage cnk:temp distiller_book.current_page.icon_font
execute store result storage cnk:temp distiller_book.data.ingredient_count int 1 run scoreboard players get $ingredient_count cnk.dummy

#handle source indicator
data modify storage cnk:temp distiller_book.data.source_key set value "cnk.no_source"
data modify storage cnk:temp distiller_book.data.source_font set value "cnk.book:base"
execute if data storage cnk:temp distiller_book.current_page.source.key run data modify storage cnk:temp distiller_book.data.source_key set from storage cnk:temp distiller_book.current_page.source.key
execute if data storage cnk:temp distiller_book.current_page.source.font run data modify storage cnk:temp distiller_book.data.source_font set from storage cnk:temp distiller_book.current_page.source.font

#check for dialog function
execute if data storage cnk:temp distiller_book.current_page.dialog_function run return run function cnk:distiller_book/open_page with storage cnk:temp distiller_book.current_page

#no dialog function, build page
function cnk:distiller_book/builder/build_page