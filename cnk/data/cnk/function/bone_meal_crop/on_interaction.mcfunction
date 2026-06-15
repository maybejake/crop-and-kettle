execute on target unless entity @s[tag=cnk.bonemeal_crop] run return fail

data remove entity @s interaction
execute on vehicle at @s run function cnk:bone_meal_crop/switch