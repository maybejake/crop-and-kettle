$loot give @s loot { \
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
                "minecraft:item_name": {"translate":"item.cnk.sweet_berry_wine","fallback":"Sweet Berry Wine"}, \
                "minecraft:item_model": "cnk:sweet_berry_wine", \
                "minecraft:food": { \
                  "nutrition": 0, \
                  "saturation": 0, \
                  "can_always_eat": true \
                }, \
                "minecraft:consumable": { \
                  "animation":"drink", \
                  "sound":"minecraft:entity.generic.drink", \
                  "has_consume_particles":false \
                }, \
                "minecraft:lore": [{"translate":"item.cnk.calendar.format","with":["$(year)","$(day)"],"color":"blue","italic":false},{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
                "minecraft:custom_data": {"cnk":{"ingredient":{"type":"sweet_berry_wine"},"wine":{"time":$(gametime),"color":$(color)}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
                "minecraft:use_remainder": {"id":"minecraft:glass_bottle","count":1} \
              } \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}