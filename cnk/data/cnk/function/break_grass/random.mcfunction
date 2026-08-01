execute store result score $seed_chance cnk.dummy run random value 1..10
execute if score $seed_chance cnk.dummy matches 6.. run return fail

data modify storage cnk:temp break_grass.loot_tables set value []
data modify storage cnk:temp break_grass.loot_tables append value "cnk:seeds/tomato_seeds"
data modify storage cnk:temp break_grass.loot_tables append value "cnk:seeds/corn_seeds"
data modify storage cnk:temp break_grass.loot_tables append value "cnk:seeds/lettuce_seeds"
data modify storage cnk:temp break_grass.loot_tables append value "cnk:seeds/rice_seeds"

function #cnk:addons/break_grass

function cnk:break_grass/pick/main
function cnk:break_grass/modify with storage cnk:temp break_grass