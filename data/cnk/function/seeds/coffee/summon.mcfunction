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
                "minecraft:item_name": {"translate":"item.cnk.coffee_cherries","fallback":"Coffee Cherries"}, \
                "minecraft:item_model": "cnk:coffee_cherries", \
                "minecraft:custom_data": {"cnk":{"ingredient":{"type":"coffee_cherries"}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
                "minecraft:entity_data": {"id":"minecraft:item_frame","Tags":["cnk.crop_setup","cnk.crop_setup_coffee"],"Silent":true,"Invisible":true}, \
                "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
                "minecraft:food": {"nutrition": 2,"saturation": 0.4}, \
                "minecraft:consumable": {} \
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