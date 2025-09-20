$loot spawn ~ ~ ~ loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "minecraft:item_frame", \
          "functions": [ \
            { \
              "function": "minecraft:set_components", \
              "components": { \
                "minecraft:item_name": {"translate":"item.cnk.tomato_seeds","fallback":"Tomato Seeds"}, \
                "minecraft:item_model": "cnk:tomato_seeds", \
                "minecraft:custom_data": {"cnk":{"ingredient":{"type":"tomato_seeds"}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
                "minecraft:entity_data": {"id":"minecraft:item_frame","Tags":["cnk.crop_setup","cnk.crop_setup_tomato"],"Silent":true,"Invisible":true}, \
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