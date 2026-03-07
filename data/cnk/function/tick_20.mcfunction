schedule function cnk:tick_20 20t replace

#slow tick wine rack
execute as @e[type=minecraft:item_display,tag=cnk.wine_rack] at @s rotated as @s positioned ^ ^ ^-0.51 unless block ~ ~ ~ minecraft:crafter run function cnk:wine_rack/break

execute as @e[type=minecraft:villager,tag=!cnk.checked_villager,tag=!smithed.entity] run function cnk:villager/check
execute as @e[type=minecraft:wandering_trader,tag=!cnk.checked_trader,tag=!smithed.entity] run function cnk:trader/check
execute as @e[type=minecraft:marker,tag=cnk.shrine_marker,tag=!cnk.shrine_marker_ritual] at @s if entity @n[type=minecraft:item,tag=cnk.meat_guide,distance=..2] run function cnk:mystery/shrine/ritual/main