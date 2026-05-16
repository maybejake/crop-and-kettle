execute if score $interact_crop_check cnk.dummy matches 1 run return run data remove entity @s interaction

execute on target if entity @s[tag=cnk.interact_crop] run scoreboard players set $interact_crop_check cnk.dummy 1

data remove entity @s interaction
execute if score $interact_crop_check cnk.dummy matches 0 run return fail

execute on vehicle if entity @s[type=minecraft:item_display,tag=cnk.crop] run function cnk:interact_crop/on_crop