data modify storage cnk:temp gift.block set from storage cnk:temp block.data
data modify storage cnk:temp gift.extra_tags set from storage cnk:temp extra_tags

data modify storage cnk:temp gift.rotation set value 0
execute store result storage cnk:temp gift.rotation int 0.1 run scoreboard players get $rotation cnk.dummy

data modify storage cnk:temp gift.components set from storage cnk:temp gift.block.components
data modify storage cnk:temp gift.components."minecraft:item_model" set value "cnk:gift_closed"

data modify storage cnk:temp gift.components."minecraft:item_name" merge value {"translate":"item.cnk.gift","fallback":"Gift"}
data modify storage cnk:temp gift.components."minecraft:custom_data"."$jade:stack" set value {"id":"cnk:gift"}

function cnk:gift/macro with storage cnk:temp gift

playsound minecraft:block.leaf_litter.place block @a ~ ~ ~ 1 2
playsound minecraft:entity.item_frame.place block @a ~ ~ ~ 1 1