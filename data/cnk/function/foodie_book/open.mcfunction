scoreboard players enable @s cnk.foodie_book_buttons

dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.cnk.foodie_book"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 240, \
      "contents": [{ \
            "translate":"book.cnk.foodie_book","font":"cnk.book:base","shadow_color":0,"color":"white","with":[ \
                {"translate":item.cnk.foodie_feast,"color":"#7b613a","font":"minecraft:default"}, \
                {"translate":item.cnk.beef_wellington,"color":"#7b613a","font":"minecraft:default"}, \
                {"translate":item.cnk.fondant_potatoes,"color":"#7b613a","font":"minecraft:default"}, \
                {"translate":item.cnk.vegetable_puree,"color":"#7b613a","font":"minecraft:default"}, \
                {"translate":item.cnk.demi-glace,"color":"#7b613a","font":"minecraft:default"}, \
                {"translate":item.cnk.fine_wine,"color":"#7b613a","font":"minecraft:default"}, \
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
        "command": "trigger cnk.foodie_book_buttons set 9991" \
      } \
    } \
  ] \
}