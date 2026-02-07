$item modify entity @s $(slot) {function:"minecraft:set_components",components:{ \
    "minecraft:item_name": {"translate":"item.cnk.netherite_knife","fallback":"Netherite Knife"}, \
    "minecraft:item_model": "cnk:netherite_knife", \
    "minecraft:custom_data": {"cnk":{"knife":true, "netherite": true},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
    "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
    "minecraft:max_damage": 3660, \
    "minecraft:enchantable": {"value": 15}, \
    "minecraft:repairable": {"items": "minecraft:netherite_ingot"}, \
    "minecraft:attribute_modifiers": [ \
        { \
            "id": "minecraft:base_attack_damage", \
            "type": "minecraft:attack_damage", \
            "amount": 5, \
            "operation": "add_value", \
            "slot": "mainhand" \
        }, \
        { \
            "id": "minecraft:base_attack_speed", \
            "type": "minecraft:attack_speed", \
            "amount": -1.5, \
            "operation": "add_value", \
            "slot": "mainhand" \
        } \
    ] \
}}