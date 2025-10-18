execute unless score @s cnk.crop_version matches 1 run function cnk:crops/update

execute if entity @s[tag=cnk.tomato_crop] run return run function cnk:crops/tomato/tick
execute if entity @s[tag=cnk.corn_crop] run return run function cnk:crops/corn/tick
execute if entity @s[tag=cnk.grape_crop] run return run function cnk:crops/grape/tick

# in case of addon crops
function #cnk:addons/crops/base_wheat