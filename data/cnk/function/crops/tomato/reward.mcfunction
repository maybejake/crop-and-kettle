execute unless score $interact_reward cnk.dummy matches 1 store result storage cnk:temp count double 1 run random value 1..4
execute unless score $interact_reward cnk.dummy matches 1 run function cnk:seeds/tomato/summon with storage cnk:temp

execute store result storage cnk:temp count double 1 run random value 2..3
function cnk:produce/tomato/summon with storage cnk:temp

execute store result score $rotten_tomato_check cnk.dummy run random value 1..1000
execute if score $rotten_tomato_check cnk.dummy matches 3..22 run loot spawn ~ ~ ~ loot cnk:food/rotten_tomato
execute if score $rotten_tomato_check cnk.dummy matches ..2 run loot spawn ~ ~ ~ loot cnk:food/very_rotten_tomato