# Use a specific UUID to create the item display to target it directly.
summon minecraft:item_display ~ ~ ~ {Tags:["cnk.wine_rack_temp"],UUID:[I;415298924,-1273737446,-2082624865,298260373],view_range:0}
data modify entity 18c0f56c-b414-4f1a-83dd-aa9f11c71795 item set from entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":0b}}}}}]
data remove entity 18c0f56c-b414-4f1a-83dd-aa9f11c71795 item.components."minecraft:custom_data".cnk.wine_rack

item replace entity @p[tag=cnk.interact_wine_rack,distance=..20] weapon.mainhand from entity 18c0f56c-b414-4f1a-83dd-aa9f11c71795 contents
kill 18c0f56c-b414-4f1a-83dd-aa9f11c71795

data remove entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":0b}}}}}]
data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value false

swing @p[tag=cnk.interact_wine_rack,distance=..20] mainhand
execute at @p[tag=cnk.interact_wine_rack,distance=..20] run playsound minecraft:item.bottle.fill block @a ~ ~ ~ 1 1

function cnk:wine_rack/update