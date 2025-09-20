$dialog show @s { \
  "type": "minecraft:multi_action", \
    "title": [ \
      {"translate": "cnk.source"}, \
      {"text": " "}, \
      {"translate": "cnk.dialog.settings"}, \
    ], \
  "actions": [ \
    { \
      "label": {"translate":"cnk.dialog.unlock_cookbook"}, \
      "tooltip": {"translate":"cnk.dialog.unlock_cookbook.tooltip"}, \
      "action": { \
        "type": "show_dialog", \
        "dialog": "cnk:unlock_cookbook_confirmation" \
      } \
    }, \
    { \
      "label": {"translate":"cnk.dialog.reset_cookbook"}, \
      "tooltip": {"translate":"cnk.dialog.reset_cookbook.tooltip"}, \
      "action": { \
        "type": "show_dialog", \
        "dialog": "cnk:reset_cookbook_confirmation" \
      } \
    }, \
    { \
      "label": {translate:"cnk.dialog.settings.toasts.$(toasts)"}, \
      "tooltip": {translate:"cnk.dialog.settings.toasts.tooltip"}, \
      "action": { \
        "type": "run_command", \
        "command": "trigger cnk.settings set 2" \
      } \
    } \
  ], \
  "exit_action": { \
    "action": { \
      "type": "show_dialog", \
      "dialog": "cnk:menu" \
    }, \
    "label": { \
      "translate": "gui.back" \
    }, \
    "width": 200 \
  }, \
  "after_action": "wait_for_response" \
}