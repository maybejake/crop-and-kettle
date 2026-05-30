advancement revoke @s only cnk:wine/old_creeping_wine
loot replace entity @s container.0 loot {pools:[{rolls:1,entries:[{type:loot_table,value:"cnk:technical/inventory"}]}],functions:[ \
  { \
    "function": "minecraft:filtered", \
    "item_filter": { \
      "items": "minecraft:splash_potion", \
      "predicates": { \
        "minecraft:custom_data": {"cnk":{"ingredient":{"type":"creeping_wine"},"wine":{}}} \
      } \
    }, \
    "on_pass": [ \
      { \
        "function": "minecraft:set_item", \
        "item": "minecraft:poisonous_potato" \
      }, \
      { \
        "function": "minecraft:set_components", \
        "components": { \
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
          } \
        } \
      }, \
      { \
        "function": "minecraft:set_components", \
        "components": { \
          "!minecraft:food": {} \
        } \
      } \
    ] \
  } \
]}