$dialog show @s { \
  "type": "minecraft:notice", \
  "title": {"translate":"cnk.dialog.settings.dynamic_command_feedback"}, \
  "body": {"type": "minecraft:plain_message", "width": 300, "contents": [ \
    {"translate": "cnk.dialog.settings.dynamic_command_feedback.status", "with": [$(status)]}, \
    {"text": "\n\n"}, \
    {"translate": "cnk.dialog.settings.dynamic_command_feedback.body"}, \
    {"text": "\n\n"}, \
    {"translate": "cnk.dialog.settings.dynamic_command_feedback.note", "color": "yellow"}, \
    {"text": "\n\n"}, \
    {"translate": "cnk.dialog.settings.dynamic_command_feedback.command"}, \
    {"text": "/function cnk:dynamic_command_feedback", "underlined": true} \
  ]}, \
  "can_close_with_escape": false, \
  "after_action": "wait_for_response", \
  "action": { \
    "label": {"translate":"gui.done"}, \
    "action": { \
      "type": "run_command", \
      "command": "trigger cnk.settings set 1" \
    } \
  } \
}