execute unless score @s cnk.crop_version matches 1 run function cnk:crops/update

execute if entity @s[tag=cnk.rice_crop] run return run function cnk:crops/rice/tick

# in case of addon crops
function #cnk:addons/crops/base_propagule