execute unless score $interact_reward cnk.dummy matches 1 store result storage cnk:temp count double 1 run random value 1..4
execute if score $interact_reward cnk.dummy matches 1 run data modify storage cnk:temp count set value 1
function cnk:seeds/coffee/summon with storage cnk:temp