tag @s add cnk.butcher_villager

# 30% chance to generate recipe
execute store result score $chance cnk.dummy run random value 0..2
execute if score $chance cnk.dummy matches 0 run return fail

execute store result score $recipe cnk.dummy run random value 1..6
execute if score $recipe cnk.dummy matches 1 run data modify storage cnk:temp recipe.sell set value { \
    "id": "minecraft:poisonous_potato", \
    "components": { \
        "minecraft:item_name": {"translate":"item.cnk.tattered_recipe","fallback":"Tattered Recipe"}, \
        "minecraft:item_model": "cnk:tattered_recipe", \
        "minecraft:custom_data": {"cnk":{"recipe":{"type":"tattered"}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
        "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
        "!minecraft:consumable": {}, \
        "minecraft:rarity":"uncommon", \
        "minecraft:max_stack_size": 1 \
    } \
}
execute if score $recipe cnk.dummy matches 2 run data modify storage cnk:temp recipe.sell set value { \
    "id": "minecraft:poisonous_potato", \
    "components": { \
        "minecraft:item_name": {"translate":"item.cnk.explosive_recipe","fallback":"Explosive Recipe"}, \
        "minecraft:item_model": "cnk:explosive_recipe", \
        "minecraft:custom_data": {"cnk":{"recipe":{"type":"explosive"}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
        "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
        "!minecraft:consumable": {}, \
        "minecraft:rarity":"uncommon", \
        "minecraft:max_stack_size": 1 \
    } \
}
execute if score $recipe cnk.dummy matches 3 run data modify storage cnk:temp recipe.sell set value { \
    "id": "minecraft:poisonous_potato", \
    "components": { \
        "minecraft:item_name": {"translate":"item.cnk.frigid_recipe","fallback":"Frigid Recipe"}, \
        "minecraft:item_model": "cnk:frigid_recipe", \
        "minecraft:custom_data": {"cnk":{"recipe":{"type":"frigid"}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
        "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
        "!minecraft:consumable": {}, \
        "minecraft:rarity":"uncommon", \
        "minecraft:max_stack_size": 1 \
    } \
}
execute if score $recipe cnk.dummy matches 4 run data modify storage cnk:temp recipe.sell set value { \
    "id": "minecraft:poisonous_potato", \
    "components": { \
        "minecraft:item_name": {"translate":"item.cnk.heavenly_recipe","fallback":"Heavenly Recipe"}, \
        "minecraft:item_model": "cnk:heavenly_recipe", \
        "minecraft:custom_data": {"cnk":{"recipe":{"type":"heavenly"}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
        "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
        "!minecraft:consumable": {}, \
        "minecraft:rarity":"uncommon", \
        "minecraft:max_stack_size": 1 \
    } \
}
execute if score $recipe cnk.dummy matches 5 run data modify storage cnk:temp recipe.sell set value { \
    "id": "minecraft:poisonous_potato", \
    "components": { \
        "minecraft:item_name": {"translate":"item.cnk.roseate_recipe","fallback":"Roseate Recipe"}, \
        "minecraft:item_model": "cnk:roseate_recipe", \
        "minecraft:custom_data": {"cnk":{"recipe":{"type":"roseate"}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
        "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
        "!minecraft:consumable": {}, \
        "minecraft:rarity":"uncommon", \
        "minecraft:max_stack_size": 1 \
    } \
}
execute if score $recipe cnk.dummy matches 6 run data modify storage cnk:temp recipe.sell set value { \
    "id": "minecraft:poisonous_potato", \
    "components": { \
        "minecraft:item_name": {"translate":"item.cnk.soaring_recipe","fallback":"Soaring Recipe"}, \
        "minecraft:item_model": "cnk:soaring_recipe", \
        "minecraft:custom_data": {"cnk":{"recipe":{"type":"soaring"}},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
        "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}], \
        "!minecraft:consumable": {}, \
        "minecraft:rarity":"uncommon", \
        "minecraft:max_stack_size": 1 \
    } \
}

data modify storage cnk:temp recipe.buy set value {"id":"minecraft:emerald", count:20}
data modify storage cnk:temp recipe.buyB set value {"id":"minecraft:paper", count:1}
data modify storage cnk:temp recipe.priceMultiplier set value 0.05f
data modify storage cnk:temp recipe.xp set value 10
data modify storage cnk:temp recipe.uses set value 3

data modify entity @s Offers.Recipes append from storage cnk:temp recipe