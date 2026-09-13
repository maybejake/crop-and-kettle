$loot replace entity @s weapon.offhand loot { \
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
                {"translate": "tooltip.cnk.pail.quantity","with":["$(quantity)", "32"],"color":"gray","italic":false} \
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