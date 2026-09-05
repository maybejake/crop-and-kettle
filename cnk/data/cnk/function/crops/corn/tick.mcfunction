# tick checks
execute unless function cnk:crops/tick/wheat/check run return run function cnk:crops/corn/break

# update crop
item modify entity @s contents cnk:grow_crop
data modify storage cnk:temp crop.height set compute entity @s float cnk:crop_height/corn
execute on passengers run data modify entity @s height set from storage cnk:temp crop.height