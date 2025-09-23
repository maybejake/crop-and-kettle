execute unless score $interact_reward cnk.dummy matches 1 store result storage cnk:temp count double 1 run random value 1..4
execute unless score $interact_reward cnk.dummy matches 1 run function cnk:seeds/grape/summon with storage cnk:temp

execute store result storage cnk:temp count double 1 run random value 2..3
function cnk:produce/grape/summon with storage cnk:temp