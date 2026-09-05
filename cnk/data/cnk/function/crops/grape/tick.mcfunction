# tick checks
execute unless function cnk:crops/tick/wheat/check run return run function cnk:crops/grape/break

# update crop
item modify entity @s contents cnk:grow_crop