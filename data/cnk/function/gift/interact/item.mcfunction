$loot spawn ~ ~0.1 ~ loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "$(id)", \
          "functions": [ \
            { \
              "function": "minecraft:set_components", \
              "components": $(components) \
            }, \
            { \
                "function":"minecraft:set_count", \
                "count":$(count) \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}

execute positioned ~ ~0.1 ~ run data modify entity @n[type=minecraft:item,distance=..0.1,nbt={Age:0s}] Motion[1] set value 0.5