scoreboard players reset @s cnk.settings
scoreboard players enable @s cnk.settings

dialog show @s { \
  "type": "minecraft:notice", \
  "title": {"translate":"cnk.dialog.admin_panel"}, \
  "body": {"type": "minecraft:plain_message", "width": 300, "contents": [ \
    {"translate": "cnk.dialog.settings.admin_panel.explanation"}, \
    {"text": "\n\n"}, \
    {"translate": "cnk.dialog.settings.admin_panel.command"}, \
    {"text": "/function cnk:admin_panel", "underlined": true} \
  ]}, \
  "can_close_with_escape": false, \
  "after_action": "wait_for_response", \
  "action": { \
    "label": {"translate":"gui.back"}, \
    "action": { \
      "type": "run_command", \
      "command": "trigger cnk.settings set 1" \
    } \
  } \
}