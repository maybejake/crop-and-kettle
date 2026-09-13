$loot spawn ~ ~ ~ loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:loot_table", \
          "value": "cnk:other/milk_pail", \
          "modifier": [ \
            { \
              "type": "minecraft:set_custom_data", \
              "tag": {"cnk":{"pail":{"quantity":$(quantity),"color":$(color)}}} \
            }, \
            { \
              "type": "minecraft:set_lore", \
              "lore": [ \
                {"translate": "tooltip.cnk.pail.quantity","with":["$(quantity)", "$(max_quantity)"],"color":"gray","italic":false} \
              ], \
              "mode":"insert", \
              "offset":0 \
            } \
          ] \
        } \
      ] \ 
    } \
  ] \
}