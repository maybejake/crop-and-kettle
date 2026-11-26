# randomly pick an index and get the selected slot
data modify storage cnk:temp insert_loot.index set compute default integer {type:"minecraft:uniform","min":0,"max":{type:"minecraft:sub",left:{type:"minecraft:storage",storage:"cnk:temp",path:"insert_loot.slot_count"},right:1}}
function cnk:insert_loot/place/pick_slot with storage cnk:temp insert_loot

# drop the loot in
function cnk:insert_loot/place/place_loot with storage cnk:temp insert_loot
