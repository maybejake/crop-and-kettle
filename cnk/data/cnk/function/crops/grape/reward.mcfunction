execute unless score $interact_reward cnk.dummy matches 1 store result score $count cnk.dummy run random value 1..4
execute unless score $interact_reward cnk.dummy matches 1 run loot spawn ~ ~ ~ loot cnk:drops/grape_seeds

execute store result score $count cnk.dummy run random value 2..3
loot spawn ~ ~ ~ loot cnk:drops/grapes