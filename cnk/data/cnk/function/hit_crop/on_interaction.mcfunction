execute on attacker unless entity @s[tag=cnk.hit_crop] run return fail

data remove entity @s attack
execute on vehicle if entity @s[type=minecraft:item_display,tag=cnk.crop] at @s run function cnk:hit_crop/switch