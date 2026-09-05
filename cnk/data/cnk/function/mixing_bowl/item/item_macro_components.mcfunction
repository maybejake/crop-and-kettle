$loot spawn ~ ~-0.3 ~ loot {\
  "pools": [\
    {\
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "$(id)", \
          "modifier": [ \
            { \
              "function": "minecraft:set_components", \
              "components": $(components) \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}