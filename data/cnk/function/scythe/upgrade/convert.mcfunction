$item modify entity @s $(slot) {function:"minecraft:set_components",components:{ \
    "minecraft:item_name": {"translate":"item.cnk.netherite_scythe","fallback":"Netherite Scythe"}, \
    "minecraft:item_model": "cnk:netherite_scythe", \
    "minecraft:custom_data": {"cnk":{"scythe":true,"netherite":true},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
    "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
    "minecraft:max_damage": 2640, \
    "minecraft:enchantable": {"value": 15}, \
    "minecraft:use_effects": {"can_sprint":true, "speed_multiplier":1, "interact_vibrations":true}, \
    "minecraft:attack_range": {"max_reach":4, "max_creative_reach":6, "hitbox_margin":0}, \
    "minecraft:consumable":{"consume_seconds":2147483647,"animation":"none","sound":"intentionally_empty","has_consume_particles":false}, \
    "minecraft:repairable": {"items": "minecraft:netherite_ingot"}, \
    "minecraft:attribute_modifiers": [ \
        { \
            "id": "minecraft:base_attack_damage", \
            "type": "minecraft:attack_damage", \
            "amount": 8, \
            "operation": "add_value", \
            "slot": "mainhand" \
        }, \
        { \
            "id": "minecraft:base_attack_speed", \
            "type": "minecraft:attack_speed", \
            "amount": -2.9, \
            "operation": "add_value", \
            "slot": "mainhand" \
        } \
    ] \
}}