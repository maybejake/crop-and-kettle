execute unless predicate {type:"entity_scores",entity:"this","scores":{cnk.crop_version:"cnk:crop_version"}} run item modify entity @s contents {"type":"minecraft:set_components","components":{"minecraft:item_model":"cnk:lettuce_crop"}}


# tick checks
execute unless function cnk:crops/tick/pumpkin/check run return run function cnk:crops/lettuce/break

# update crop
item modify entity @s contents cnk:grow_crop
data modify storage cnk:temp crop.height set compute entity @s float cnk:crop_height/lettuce
execute on passengers run data modify entity @s height set from storage cnk:temp crop.height