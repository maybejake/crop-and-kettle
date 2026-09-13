$loot replace entity @s weapon.mainhand loot { \
    "pools":[ \
        { \
            "rolls":1, \
            "entries":[ \
                { \
                    "type":"minecraft:item", \
                    "name":"$(id)", \
                    "modifier":[ \
                        { \
                            "type":"minecraft:set_components", \
                            "components":$(components) \
                        }, \
                        { \
                            "type":"minecraft:set_count", \
                            "count":$(count) \
                        } \
                    ] \
                } \
            ] \
        } \
    ] \
}