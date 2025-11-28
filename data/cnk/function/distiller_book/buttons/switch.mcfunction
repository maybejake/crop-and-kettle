# value map:
# 9901 = previous page
# 9902 = next page
# 9991 = close dialog

execute if score @s cnk.distiller_book_buttons matches 9901 run function cnk:distiller_book/buttons/previous_page
execute if score @s cnk.distiller_book_buttons matches 9902 run function cnk:distiller_book/buttons/next_page

execute if score @s cnk.distiller_book_buttons matches 9991 run function cnk:distiller_book/buttons/close

scoreboard players reset @s cnk.distiller_book_buttons
scoreboard players enable @s cnk.distiller_book_buttons