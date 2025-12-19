summon minecraft:item_display ~ ~ ~ {Tags:["cnk.wine_rack_temp"],view_range:0}
data modify entity @n[type=minecraft:item_display,tag=cnk.wine_rack_temp] item set from entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":3b}}}}}]
data remove entity @n[type=minecraft:item_display,tag=cnk.wine_rack_temp] item.components."minecraft:custom_data".cnk.wine_rack

item replace entity @p[tag=cnk.interact_wine_rack] weapon.mainhand from entity @n[type=minecraft:item_display,tag=cnk.wine_rack_temp] contents
kill @n[type=minecraft:item_display,tag=cnk.wine_rack_temp]

data remove entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":3b}}}}}]

execute at @p[tag=cnk.interact_wine_rack] run playsound minecraft:item.bottle.fill block @a ~ ~ ~ 1 1

function cnk:wine_rack/update