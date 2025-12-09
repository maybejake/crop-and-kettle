data modify storage cnk:temp wine_rack.insert set from entity @p[tag=cnk.interact_wine_rack] SelectedItem
data modify storage cnk:temp wine_rack.insert.components."minecraft:custom_data".cnk.wine_rack.slot set value 0b

data modify entity @s item.components."minecraft:bundle_contents" append from storage cnk:temp wine_rack.insert
data modify entity @s item.components."minecraft:custom_model_data".colors[0] set from entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":0b}}}}}].components."minecraft:custom_data".cnk.wine.color
item replace entity @p[tag=cnk.interact_wine_rack] weapon.mainhand with minecraft:air

execute at @p[tag=cnk.interact_wine_rack] run playsound minecraft:item.bottle.fill block @a ~ ~ ~ 1 1

function cnk:wine_rack/update