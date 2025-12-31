tag @s add cnk.checked_trader

execute store result score $chance cnk.dummy run random value 1..5
execute unless score $chance cnk.dummy matches 1 run return fail

data remove storage cnk:temp trader
data modify storage cnk:temp trader.sell set value { \
    "id": "minecraft:baked_potato", \
    "components": { \
        "minecraft:item_name": {"translate":"item.cnk.coffee_cherries","fallback":"Coffee Cherries"}, \
        "minecraft:use_effects": {"can_sprint":true, "speed_multiplier":1, "interact_vibrations":true}, \
        "minecraft:consumable":{"consume_seconds":2147483647,"animation":"none","sound":"intentionally_empty","has_consume_particles":false}, \
        "minecraft:food":{"nutrition":0,"saturation":0,"can_always_eat": true}, \
        "minecraft:item_model": "cnk:coffee_cherries", \
        "minecraft:custom_data": {"cnk":{"ingredient":{"type":"coffee_cherries"},"seed":true},"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
        "minecraft:lore": [{"translate":"cnk.tooltip","font":"cnk:tooltip","color":"white","italic":false}] \
    } \
}

data modify storage cnk:temp trader.buy set value {"id":"minecraft:emerald", count:15}
data modify storage cnk:temp trader.priceMultiplier set value 0.05f
data modify storage cnk:temp trader.rewardExp set value true
data modify storage cnk:temp trader.xp set value 10
data modify storage cnk:temp trader.maxUses set value 3

data modify entity @s Offers.Recipes append from storage cnk:temp trader