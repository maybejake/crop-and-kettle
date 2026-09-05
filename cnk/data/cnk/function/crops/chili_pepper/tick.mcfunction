# tick checks
execute unless function cnk:crops/tick/pumpkin/check run return run function cnk:crops/chili_pepper/break

# update crop
item modify entity @s contents cnk:grow_crop
data modify storage cnk:temp crop.height set compute entity @s float cnk:crop_height/chili_pepper
execute on passengers run data modify entity @s height set from storage cnk:temp crop.height