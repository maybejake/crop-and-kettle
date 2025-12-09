kill @n[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:crafter"}},distance=..1]
kill @n[type=minecraft:item,nbt={Age:1s,Item:{id:"minecraft:crafter"}},distance=..1]
loot spawn ~ ~ ~ loot cnk:tools/wine_rack

playsound minecraft:block.wood.break block @a ~ ~ ~ 1 1

execute rotated as @s align xyz positioned ~0.5 ~0.375 ~0.5 positioned ^ ^0.249 ^0.38 run kill @n[type=minecraft:interaction,tag=cnk.wine_rack_interaction,distance=..0.1]
execute rotated as @s align xyz positioned ~0.5 ~0.375 ~0.5 positioned ^0.249 ^ ^0.38 run kill @n[type=minecraft:interaction,tag=cnk.wine_rack_interaction,distance=..0.1]
execute rotated as @s align xyz positioned ~0.5 ~0.375 ~0.5 positioned ^-0.249 ^ ^0.38 run kill @n[type=minecraft:interaction,tag=cnk.wine_rack_interaction,distance=..0.1]
execute rotated as @s align xyz positioned ~0.5 ~0.375 ~0.5 positioned ^ ^-0.249 ^0.38 run kill @n[type=minecraft:interaction,tag=cnk.wine_rack_interaction,distance=..0.1]

execute if data entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":0b}}}}}] run function cnk:wine_rack/drop with entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":0b}}}}}]
execute if data entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":1b}}}}}] run function cnk:wine_rack/drop with entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":1b}}}}}]
execute if data entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":2b}}}}}] run function cnk:wine_rack/drop with entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":2b}}}}}]
execute if data entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":3b}}}}}] run function cnk:wine_rack/drop with entity @s item.components."minecraft:bundle_contents"[{components:{"minecraft:custom_data":{"cnk":{"wine_rack":{"slot":3b}}}}}]

kill @s