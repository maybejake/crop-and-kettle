data modify storage cnk:temp gift.components set from entity @s item.components

execute on passengers run kill @s
kill @s

playsound minecraft:block.leaf_litter.break block @a ~ ~ ~ 1 2
playsound minecraft:entity.item_frame.break block @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:paper"}} ~ ~0.3 ~ 0.3 0.3 0.3 0.1 20

data modify storage cnk:temp gift.components."minecraft:item_model" set value "cnk:gift_item"
function cnk:gift/break/macro with storage cnk:temp gift