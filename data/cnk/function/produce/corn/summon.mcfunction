$loot spawn ~ ~ ~ loot { \
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
                "minecraft:consumable": {}, \
                "minecraft:item_name": {"translate":"item.cnk.corn","fallback":"Corn"}, \
                "minecraft:item_model": "cnk:corn", \
                "minecraft:food": { \
                  "nutrition": 1, \
                  "saturation": 0 \
                }, \
                "minecraft:custom_data": {"cnk":{"ingredient":{"type":"corn"}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
                "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}] \
              } \
            }, \
            { \
              "function": "minecraft:set_count", \
              "count": $(count) \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}