execute if entity @s[tag=cnk.lettuce_crop] run return run function cnk:crops/lettuce/tick
execute if entity @s[tag=cnk.coffee_crop] run return run function cnk:crops/coffee/tick
execute if entity @s[tag=cnk.chili_pepper_crop] run return run function cnk:crops/chili_pepper/tick

# in case of addon crops
function #cnk:addons/crops/base_pumpkin