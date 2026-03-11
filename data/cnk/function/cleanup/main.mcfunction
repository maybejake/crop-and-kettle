tag @s add cnk.checked

execute store result score $age cnk.dummy run data get entity @s Age
execute if score $age cnk.dummy matches 2.. run return fail

execute if items entity @s contents minecraft:crafter at @s align xyz positioned ~0.5 ~0.5 ~0.5 run return run function cnk:cleanup/wine_rack/main
execute if items entity @s contents #cnk:seeds at @s align xyz positioned ~0.5 ~ ~0.5 if entity @n[type=minecraft:item_display,tag=cnk.crop,distance=..0.1] run return run function cnk:cleanup/crop/main
