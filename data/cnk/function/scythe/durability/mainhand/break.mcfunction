execute if predicate cnk:iron/mainhand at @s anchored eyes run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:iron_scythe"}}} ^ ^-0.35 ^0.65 0.1 0.1 0.1 0.06 10 force
execute if predicate cnk:diamond/mainhand at @s anchored eyes run particle minecraft:item{item:{id:"minecraft:barrier","components":{"minecraft:item_model":"cnk:diamond_scythe"}}} ^ ^-0.35 ^0.65 0.1 0.1 0.1 0.06 10 force
item replace entity @s weapon.mainhand with minecraft:air
playsound minecraft:entity.item.break neutral @a ~ ~ ~ 1 1