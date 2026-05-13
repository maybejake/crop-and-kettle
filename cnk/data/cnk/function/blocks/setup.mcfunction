function cnk:blocks/rotation

data modify storage cnk:temp item_name set from block ~ ~ ~ components."minecraft:item_name"
data modify storage cnk:temp block.data set from block ~ ~ ~

setblock ~ ~ ~ minecraft:air

# if not partial placeable, place normally
data modify storage cnk:temp extra_tags set value ""
execute unless data storage cnk:temp block.data.components."minecraft:custom_data".cnk.block{partial_placeable:true} run return run function cnk:blocks/switch

# is partial placeable, figure out offset
data modify storage cnk:temp extra_tags set value ",'cnk.in_partial'"
execute if block ~ ~-1 ~ #minecraft:trapdoors[half=bottom] positioned ~ ~-0.8125 ~ run return run function cnk:blocks/switch
execute if block ~ ~-1 ~ #cnk:carpets positioned ~ ~-0.9375 ~ run return run function cnk:blocks/switch
execute if block ~ ~-1 ~ #minecraft:slabs positioned ~ ~-0.5 ~ run return run function cnk:blocks/switch

# is partial, but not on partial block, place normally
data modify storage cnk:temp extra_tags set value ""
function cnk:blocks/switch