$item modify entity @s $(slot) {function:"minecraft:set_components",components:{ \
    "minecraft:item_name": {"translate":"item.cnk.netherite_scythe","fallback":"Netherite Scythe"}, \
    "minecraft:item_model": "cnk:netherite_scythe", \
    "minecraft:custom_data": {"cnk":{"scythe":true,"netherite":true},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
    "minecraft:max_damage": 2640, \
    "minecraft:enchantable": {"value": 15}, \
    "minecraft:repairable": {"items": "minecraft:netherite_ingot"}, \
    "minecraft:attribute_modifiers": [ \
        { \
            "type":"minecraft:attack_damage", \
            "id":"cnk:netherite_scythe", \
            "amount":9, \
            "operation":"add_value", \
            "slot":"mainhand", \
            "display": { \
                "type": "override", \
                "value": [{"text":" 9 ","color":"dark_green"},{"translate":"attribute.name.attack_damage"}] \
            } \
        }, \
        { \
            "type":"minecraft:attack_speed", \
            "id":"cnk:scythe", \
            "amount":-2.9, \
            "operation":"add_value", \
            "slot":"mainhand", \
            "display": { \
                "type": "override", \
                "value": [{"text":" 1.1 ","color":"dark_green"},{"translate":"attribute.name.attack_speed"}] \
            } \
        } \
    ] \
}}