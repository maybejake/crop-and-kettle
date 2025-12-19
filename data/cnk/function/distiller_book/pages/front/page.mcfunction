dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.cnk.distiller_book"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 240, \
      "contents": [{ \
            "translate":"book.cnk.distiller_front_page","font":"cnk.book:base","shadow_color":0,"color":"white","with":[ \
                {"translate":book.cnk.front_navigation,"with":[{"translate":book.cnk.next_page,"hover_event":{"action":"show_text","value":{"translate":book.cnk.next_page.hover}},"click_event":{"action":"run_command","command":"trigger cnk.distiller_book_buttons set 9902"}}]} \
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