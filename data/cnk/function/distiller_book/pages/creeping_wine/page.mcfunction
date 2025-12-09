$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.cnk.distiller_book"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 240, \
      "contents": [{ \
            "translate":"book.cnk.creeping_wine","font":"cnk.book:base","shadow_color":0,"color":"white","with":[ \
                {"translate":$(page_name),"color":"#7b613a","font":"minecraft:default"}, \
                {'translate':book.cnk.ingredient_template,with:[{'translate':book.$(slot_1),'font':'$(font_1)'}],'hover_event':{'action':'show_text','value':[{'translate':$(slot_1)}]}}, \
                {'translate':book.cnk.ingredient_template,with:[{'translate':book.$(slot_2),'font':'$(font_2)'}],'hover_event':{'action':'show_text','value':[{'translate':$(slot_2)}]}}, \
                {'translate':book.cnk.ingredient_template,with:[{'translate':book.$(slot_3),'font':'$(font_3)'}],'hover_event':{'action':'show_text','value':[{'translate':$(slot_3)}]}}, \
                {"translate":book.cnk.bottom_line,"with":[{"translate":book.cnk.page_number.$(page_number_width),"font":"cnk.book:small_text","with":[{"text":"$(current_page)","color":"#927359"}]}]}, \
                {"translate":book.cnk.navigation,"with":[{"translate":book.cnk.previous_page,"hover_event":{"action":"show_text","value":{"translate":book.cnk.previous_page.hover}},"click_event":{"action":"run_command","command":"trigger cnk.distiller_book_buttons set 9901"}},{"translate":book.$(source_key),"font":"$(source_font)","hover_event":{"action":"show_text","value":{"translate":$(source_key)}}},{"translate":book.cnk.next_page,"hover_event":{"action":"show_text","value":{"translate":book.cnk.next_page.hover}},"click_event":{"action":"run_command","command":"trigger cnk.distiller_book_buttons set 9902"}}]} \
            ] \
        }, \
        {"text":"\n\n\n\n"}] \
    } \
  ], \
  "inputs": [], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none", \
  "actions": [ \
    { \
      "label": "Done", \
      "width": 200, \
      "action": { \
        "type": "run_command", \
        "command": "trigger cnk.distiller_book_buttons set 9991" \
      } \
    } \
  ] \
}