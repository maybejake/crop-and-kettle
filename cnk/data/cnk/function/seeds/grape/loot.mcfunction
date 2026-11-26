advancement revoke @s only cnk:grape_loot

data modify storage cnk:temp insert_loot.loot_table set value "cnk:seeds/grape_seeds"
data modify storage cnk:temp insert_loot.count set compute default integer {type:"minecraft:uniform",min:1,max:4}

function cnk:insert_loot/main
