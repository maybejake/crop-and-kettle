execute if score $interact_crop_check cnk.dummy matches 1 run return run data remove entity @s interaction

execute on target if entity @s[tag=cnk.interact_crop] run scoreboard players set $interact_crop_check cnk.dummy 1

data remove entity @s interaction
execute if score $interact_crop_check cnk.dummy matches 0 run return fail

execute if entity @p[tag=cnk.interact_crop,predicate=cnk:scythe/either,distance=..20] positioned ~ ~0.5625 ~ as @n[type=minecraft:item_display,tag=cnk.crop,distance=..0.1] at @s run return run function cnk:scythe/interact/main
execute positioned ~ ~0.5625 ~ as @n[type=minecraft:item_display,tag=cnk.crop,distance=..0.1] run function cnk:interact_crop/switch