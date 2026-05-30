$loot $(give_or_spawn) loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "minecraft:poisonous_potato", \
          "functions": [ \
            { \
              "function": "minecraft:set_components", \
              "components": { \
                "minecraft:max_stack_size": 1, \
                "minecraft:item_name": {"translate":"item.cnk.creeping_wine","fallback":"Creeping Wine"}, \
                "minecraft:item_model": "cnk:creeping_wine", \
                "!minecraft:food": {}, \
                "minecraft:consumable": { \
                  "animation":"trident", \
                  "sound":"intentionally_empty", \
                  "has_consume_particles":false, \
                  "consume_seconds": 2, \
                  "on_consume_effects": [ \
                    { \
                      "type": "minecraft:play_sound", \
                      "sound": "minecraft:entity.splash_potion.throw" \
                    } \
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