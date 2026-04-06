execute if score $hit_crop_check cnk.dummy matches 1 run return run data remove entity @s attack

execute on attacker if entity @s[tag=cnk.hit_crop] run scoreboard players set $hit_crop_check cnk.dummy 1

data remove entity @s attack
execute if score $hit_crop_check cnk.dummy matches 1 on vehicle if entity @s[type=minecraft:item_display,tag=cnk.crop] at @s run function cnk:hit_crop/switch