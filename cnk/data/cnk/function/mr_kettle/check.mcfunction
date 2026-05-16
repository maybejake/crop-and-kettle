# is partial placeable, figure out offset
data modify storage cnk:temp extra_tags set value ",'cnk.in_partial'"
execute if block ~ ~-1 ~ #minecraft:trapdoors[half=bottom] positioned ~ ~-0.8125 ~ run return run function cnk:mr_kettle/place
execute if block ~ ~-1 ~ #cnk:carpets positioned ~ ~-0.9375 ~ run return run function cnk:mr_kettle/place
execute if block ~ ~-1 ~ #minecraft:slabs positioned ~ ~-0.5 ~ run return run function cnk:mr_kettle/place

# is partial, but not on partial block, place normally
data modify storage cnk:temp extra_tags set value ""
return run function cnk:mr_kettle/place