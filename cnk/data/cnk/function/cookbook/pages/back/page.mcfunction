$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.cnk.cookbook"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 211, \
      "contents": [{ \
            "translate":"book.cnk.back_page","font":"cnk.book:base","shadow_color":0,"color":"white","with":[ \
                {"translate":book.tab.cnk.front.idle,"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.front}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9921"}}, \
                {"translate":book.tab.cnk.staple.idle,"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.staple}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9922"}}, \
                {"translate":book.tab.cnk.snack.idle,"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.snack}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9923"}}, \
                {"translate":book.tab.cnk.light.idle,"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.light}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9924"}}, \
                {"translate":book.tab.cnk.hearty.idle,"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.hearty}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9925"}}, \
                {"translate":book.tab.cnk.feast.idle,"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.feast}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9926"}}, \
                {"translate":book.tab.cnk.dessert.idle,"hover_event":{"action":"show_text","value":{"translate":book.cnk.section.dessert}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9927"}}, \
                {"translate":book.cnk.cookbook_back_navigation,"with":[{"translate":book.cnk.previous_page,"hover_event":{"action":"show_text","value":{"translate":book.cnk.previous_page.hover}},"click_event":{"action":"run_command","command":"trigger cnk.cookbook_buttons set 9901"}},{"translate":$(previous_incomplete_recipe)}]} \
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
        "command": "trigger cnk.cookbook_buttons set 9991" \
      } \
    } \
    $(lectern_button) \
  ] \
}