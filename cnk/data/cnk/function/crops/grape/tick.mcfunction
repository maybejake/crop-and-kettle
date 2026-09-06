execute unless predicate {type:"entity_scores",entity:"this","scores":{cnk.crop_version:"cnk:crop_version"}} run item modify entity @s contents {"type":"minecraft:set_components","components":{"minecraft:item_model":"cnk:grape_crop"}}


# tick checks
execute unless function cnk:crops/tick/wheat/check run return run function cnk:crops/grape/break

# update crop
item modify entity @s contents cnk:grow_crop