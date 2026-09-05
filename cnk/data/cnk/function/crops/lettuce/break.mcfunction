execute if score @s cnk.age matches 0 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:lettuce_crop","minecraft:custom_model_data":{floats:[0]}}}} ~ ~0.2 ~ 0.28 0.1 0.28 0.07 70 force
execute if score @s cnk.age matches 1 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:lettuce_crop","minecraft:custom_model_data":{floats:[1]}}}} ~ ~0.2 ~ 0.28 0.2 0.28 0.07 70 force
execute if score @s cnk.age matches 2 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:lettuce_crop","minecraft:custom_model_data":{floats:[2]}}}} ~ ~0.2 ~ 0.28 0.3 0.28 0.07 70 force
execute if score @s cnk.age matches 3.. run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:lettuce_crop","minecraft:custom_model_data":{floats:[3]}}}} ~ ~0.2 ~ 0.28 0.5 0.28 0.07 70 force

loot spawn ~ ~0.5 ~ loot cnk:drops/crop/lettuce/break

function cnk:crops/break/pumpkin