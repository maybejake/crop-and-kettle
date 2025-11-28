tag @s add cnk.gift_open

data modify entity @s item.components."minecraft:item_model" set value "cnk:gift_open"

data modify storage cnk:temp gift.components set value {}
data modify storage cnk:temp gift.components set from entity @s item.components."minecraft:bundle_contents"[0].components
data modify storage cnk:temp gift.id set from entity @s item.components."minecraft:bundle_contents"[0].id
data modify storage cnk:temp gift.count set from entity @s item.components."minecraft:bundle_contents"[0].count

particle minecraft:item{item:{id:"minecraft:pink_dye",components:{"minecraft:item_model":"cnk:rainbow"}}} ~ ~0.6 ~ 0.2 0.5 0.2 0.1 75 force
playsound minecraft:block.leaf_litter.hit block @a ~ ~ ~ 1 2
playsound minecraft:entity.item_frame.break block @a ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.launch neutral @a ~ ~ ~ 1 1

function cnk:gift/interact/item with storage cnk:temp gift