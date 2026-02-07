data modify storage cnk:temp distiller_book.data.lectern_button set value " \
,{ \
    'label': {translate:'lectern.take_book'}, \
    'width': 105, \
    'action': { \
    'type': 'run_command', \
    'command': 'trigger cnk.distiller_book_buttons set 9992' \
    } \
}"
data modify storage cnk:temp distiller_book.data.button_width set value 105