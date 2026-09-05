execute if score @s cnk.age matches 0 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:coffee_crop","minecraft:custom_model_data":{floats:[0]}}}} ~ ~0.2 ~ 0.28 0.2 0.28 0.07 70 force
execute if score @s cnk.age matches 1 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:coffee_crop","minecraft:custom_model_data":{floats:[1]}}}} ~ ~0.2 ~ 0.28 0.3 0.28 0.07 70 force
execute if score @s cnk.age matches 2 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:coffee_crop","minecraft:custom_model_data":{floats:[2]}}}} ~ ~0.2 ~ 0.28 0.4 0.28 0.07 70 force
execute if score @s cnk.age matches 3 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:coffee_crop","minecraft:custom_model_data":{floats:[3]}}}} ~ ~0.2 ~ 0.28 0.5 0.28 0.07 70 force
execute if score @s cnk.age matches 4 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:coffee_crop","minecraft:custom_model_data":{floats:[4]}}}} ~ ~0.2 ~ 0.28 0.6 0.28 0.07 70 force
execute if score @s cnk.age matches 5 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:coffee_crop","minecraft:custom_model_data":{floats:[5]}}}} ~ ~0.2 ~ 0.28 0.7 0.28 0.07 70 force
execute if score @s cnk.age matches 6 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:coffee_crop","minecraft:custom_model_data":{floats:[6]}}}} ~ ~0.2 ~ 0.28 0.7 0.28 0.07 70 force
execute if score @s cnk.age matches 7 run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:coffee_crop","minecraft:custom_model_data":{floats:[7]}}}} ~ ~0.2 ~ 0.28 0.7 0.28 0.07 70 force
execute if score @s cnk.age matches 8.. run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:coffee_crop","minecraft:custom_model_data":{floats:[8]}}}} ~ ~0.2 ~ 0.28 0.7 0.28 0.07 70 force

loot spawn ~ ~0.5 ~ loot cnk:drops/crop/chili_pepper/break

function cnk:crops/break/pumpkin