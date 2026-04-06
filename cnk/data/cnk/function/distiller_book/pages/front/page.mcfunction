$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.cnk.distiller_book"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 211, \
      "contents": [{ \
            "translate":"book.cnk.distiller_front_page","font":"cnk.book:base","shadow_color":0,"color":"white","with":[ \
                {"translate":book.cnk.front_navigation,"with":[{"translate":book.cnk.next_page,"hover_event":{"action":"show_text","value":{"translate":book.cnk.next_page.hover}},"click_event":{"action":"run_command","command":"trigger cnk.distiller_book_buttons set 9902"}}]} \
            ] \
        }] \
    }, \
    { \
      "type": "minecraft:plain_message", \
      "width": 1, \
      "contents": [{"text":"\n"}] \
    } \
  ], \
  "inputs": [], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none", \
  "actions": [ \
    { \
      "label": {translate:"gui.done"}, \
      "width": $(button_width), \
      "action": { \
        "type": "run_command", \
        "command": "trigger cnk.distiller_book_buttons set 9991" \
      } \
    } \
    $(lectern_button) \
  ] \
}