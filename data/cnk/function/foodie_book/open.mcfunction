scoreboard players enable @s cnk.foodie_book_buttons

#handle open state
execute if score $dynamic_command_feedback cnk.dummy matches 1 if entity @s[tag=!cnk.book_open] run function cnk:cookbook/open_state

#handle lectern button
data modify storage cnk:temp foodie_book.data.lectern_button set value ","
data modify storage cnk:temp foodie_book.data.button_width set value 211
execute if entity @s[tag=cnk.via_lectern] run function cnk:foodie_book/lectern_button

function cnk:foodie_book/macro with storage cnk:temp foodie_book.data