execute on target unless entity @s[tag=cnk.bonemeal_crop] run return fail

execute on vehicle at @s run function cnk:bone_meal_crop/switch
data remove entity @s interaction