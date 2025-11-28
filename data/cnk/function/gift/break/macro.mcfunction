$loot spawn ~ ~0.3 ~ loot { \
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
              "components": $(components) \
            }, \
            { \
              "function": "minecraft:set_components", \
              "components": \
              { \
                "!minecraft:equippable": {}, \
                "minecraft:profile": {texture: "cnk:block/transparent_head"}, \
                "minecraft:max_stack_size": 1 \
              } \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}