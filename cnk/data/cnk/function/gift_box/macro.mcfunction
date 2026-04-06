$loot replace entity @s weapon.mainhand loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "minecraft:player_head", \
          "functions": [ \
            { \
              "function": "minecraft:set_components", \
              "components": { \
                "minecraft:item_name": {"translate":"item.cnk.gift","fallback":"Gift"}, \
                "minecraft:item_model": "cnk:gift_item", \
                "minecraft:custom_data": {"cnk":{"block":{"type":"gift"},"gift_box":true},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
                "minecraft:lore": [{"translate":"tooltip.cnk.gift.tag","with":[{"text":"$(name)"}],"color":"gray","italic":false},{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
                "minecraft:custom_model_data": {colors:$(colors)}, \
                "minecraft:profile": {"texture":"cnk:block/transparent_head"}, \
                "minecraft:tooltip_display": {"hidden_components":["minecraft:profile"]}, \
                "minecraft:bundle_contents": [$(item)], \
                "minecraft:rarity":"common", \
                "!minecraft:equippable": {} \
              } \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}