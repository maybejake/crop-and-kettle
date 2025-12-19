scoreboard players set $rack_filled cnk.dummy 0
execute if data entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":1b}}}}}] run scoreboard players set $rack_filled cnk.dummy 1

execute if items entity @p[tag=cnk.interact_wine_rack] weapon.mainhand *[minecraft:custom_data~{cnk:{wine:{}}}] if score $rack_filled cnk.dummy matches 0 run return run function cnk:wine_rack/interact/right/insert
execute unless items entity @p[tag=cnk.interact_wine_rack] weapon.mainhand * if score $rack_filled cnk.dummy matches 1 run return run function cnk:wine_rack/interact/right/remove