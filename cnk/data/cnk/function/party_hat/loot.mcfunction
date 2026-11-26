advancement revoke @s only cnk:party_hat_loot

data modify storage cnk:temp insert_loot.loot_table set value "cnk:other/party_hat_special"
data modify storage cnk:temp insert_loot.count set compute default integer {type:"minecraft:uniform",min:0,max:1}

function cnk:insert_loot/main
