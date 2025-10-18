$loot $(give_or_spawn) loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "minecraft:splash_potion", \
          "functions": [ \
            { \
              "function": "minecraft:set_components", \
              "components": { \
                "minecraft:max_stack_size": 1, \
                "minecraft:item_name": {"translate":"item.cnk.creeping_wine","fallback":"Creeping Wine"}, \
                "minecraft:item_model": "cnk:creeping_wine", \
                "minecraft:potion_contents": { \
                  "custom_color": 7358282, \
                  "custom_name": "creeping_wine" \
                }, \
                "minecraft:tooltip_display": { \
                  "hidden_components": [ \
                    "minecraft:potion_contents" \
                  ] \
                }, \
                "minecraft:lore": [{"translate":"item.cnk.calendar.format","with":["$(year)","$(day)"],"color":"blue","italic":false},{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
                "minecraft:custom_data": {"cnk":{"ingredient":{"type":"creeping_wine"},"wine":{"time":$(gametime),"color":$(color)}},"smithed":{"ignore":{"functionality":true,"crafting":true}}} \
              } \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}