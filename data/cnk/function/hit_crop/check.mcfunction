execute if score $hit_crop_check cnk.dummy matches 1 run return run data remove entity @s attack

execute on attacker if entity @s[tag=cnk.hit_crop] run scoreboard players set $hit_crop_check cnk.dummy 1

data remove entity @s attack
execute if score $hit_crop_check cnk.dummy matches 1 positioned ~ ~0.5625 ~ as @n[type=minecraft:item_display,tag=cnk.crop,distance=..0.1] at @s run function cnk:hit_crop/switch