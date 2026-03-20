$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate": "cnk.dialog.admin_panel"}, \
  "body": {"type": "minecraft:plain_message", "width": 400, "contents": [ \
    {"translate": "cnk.dialog.admin_panel.dynamic_command_feedback.body"}, \
    {"text": "\n\n"}, \
    {"translate": "cnk.dialog.admin_panel.dynamic_command_feedback.note", "color":"yellow"}, \
    {"text": "\n\n"}, \
    {"translate": "cnk.dialog.admin_panel.days_in_a_year.note"}, \
    {"text": "\n\n"}, \
    {"translate": "cnk.dialog.admin_panel.disable_wine.note"} \
  ]}, \
  "inputs": [ \
    { \
      "type": "minecraft:boolean", \
      "key": "dynamic_command_feedback", \
      "label": {"translate": "cnk.dialog.admin_panel.enable", with:[{"translate": "cnk.dialog.settings.dynamic_command_feedback"}]}, \
      "initial": $(dynamic_command_feedback) \
    }, \
        { \
      "type": "minecraft:number_range", \
      "key": "days_in_a_year", \
      "label": {"translate": "cnk.dialog.admin_panel.days_in_a_year"}, \
      "start": 1, \
      "end": 365, \
      "step": 1, \
      "initial": $(days_in_a_year) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "apple_cider_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.apple_cider"}]}, \
      "initial": $(apple_cider_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "blazing_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.blazing_wine"}]}, \
      "initial": $(blazing_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "blessing_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.blessing_wine"}]}, \
      "initial": $(blessing_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "breezing_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.breezing_wine"}]}, \
      "initial": $(breezing_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "chorus_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.chorus_wine"}]}, \
      "initial": $(chorus_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "creeping_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.creeping_wine"}]}, \
      "initial": $(creeping_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "diving_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.diving_wine"}]}, \
      "initial": $(diving_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "gleaming_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.gleaming_wine"}]}, \
      "initial": $(gleaming_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "glow_berry_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.glow_berry_wine"}]}, \
      "initial": $(glow_berry_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "grape_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.grape_wine"}]}, \
      "initial": $(grape_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "heroic_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.heroic_wine"}]}, \
      "initial": $(heroic_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "mulled_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.mulled_wine"}]}, \
      "initial": $(mulled_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "prospecting_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.prospecting_wine"}]}, \
      "initial": $(prospecting_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "sweet_berry_wine_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.sweet_berry_wine"}]}, \
      "initial": $(sweet_berry_wine_disabled) \
    }, \
    { \
      "type": "minecraft:boolean", \
      "key": "gift_box_disabled", \
      "label": {"translate": "cnk.dialog.admin_panel.disable", with:[{"translate": "item.cnk.gift_box"}]}, \
      "initial": $(gift_box_disabled) \
    } \
  ], \
  "can_close_with_escape": true, \
  "after_action": "close", \
  "pause": true, \
  "actions": [ \
    { \
      "label": {"translate": "cnk.dialog.admin_panel.confirm"}, \
      "action": { \
        "type": "minecraft:dynamic/run_command", \
        "template": "function cnk:admin_panel/confirm {$(macros)}" \
      }, \
      "width": 200 \
    } \
  ] \
}