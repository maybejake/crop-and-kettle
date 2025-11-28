$item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{ \
    "minecraft:use_remainder": { \
        "id": "minecraft:poisonous_potato", \
        "components": { \
            "minecraft:item_name": {"translate":"item.cnk.treat_basket","fallback":"Treat Basket"}, \
            "minecraft:consumable": {"consume_seconds":0, "animation": "none", "sound": "intentionally_empty", "has_consume_particles": false}, \
            "!minecraft:food": {}, \
            "minecraft:item_model": "cnk:treat_basket", \
            "minecraft:use_cooldown": {"seconds":30, "cooldown_group": "cnk:treat_basket"}, \
            "minecraft:custom_data": {"cnk":{"treat_basket":true},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
            "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
            "minecraft:max_damage": $(max_damage), \
            "minecraft:damage": $(damage), \
            "minecraft:max_stack_size": 1 \
        } \
    } \
}}