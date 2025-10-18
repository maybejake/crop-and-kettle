execute if score $bonemeal_crop_check cnk.dummy matches 1 run return run data remove entity @s interaction

execute on target if entity @s[tag=cnk.bonemeal_crop] run scoreboard players set $bonemeal_crop_check cnk.dummy 1

data remove entity @s interaction
execute if score $bonemeal_crop_check cnk.dummy matches 1 on vehicle if entity @n[type=minecraft:item_display,tag=cnk.crop] at @s run function cnk:bonemeal_crop/switch