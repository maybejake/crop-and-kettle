advancement revoke @s only cnk:coffee_loot

data modify storage cnk:temp insert_loot.loot_table set value "cnk:seeds/coffee_cherries"
data modify storage cnk:temp insert_loot.count set compute default integer {type:"minecraft:uniform",min:1,max:3}

function cnk:insert_loot/main
