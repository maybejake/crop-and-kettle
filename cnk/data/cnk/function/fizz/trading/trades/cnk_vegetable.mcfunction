execute store result score $choice cnk.dummy run random value 1..7
execute if score $choice cnk.dummy matches 1 run function cnk:loot_table_to_data/main {loot_table:"cnk:food/corn"}
execute if score $choice cnk.dummy matches 2 run function cnk:loot_table_to_data/main {loot_table:"cnk:food/lettuce"}
execute if score $choice cnk.dummy matches 3 run function cnk:loot_table_to_data/main {loot_table:"cnk:food/rice"}
execute if score $choice cnk.dummy matches 4 run function cnk:loot_table_to_data/main {loot_table:"cnk:food/tomato"}
execute if score $choice cnk.dummy matches 5 run function cnk:loot_table_to_data/main {loot_table:"cnk:seeds/coffee_cherries"}
execute if score $choice cnk.dummy matches 6 run function cnk:loot_table_to_data/main {loot_table:"cnk:food/chili_pepper"}
execute if score $choice cnk.dummy matches 7 run function cnk:loot_table_to_data/main {loot_table:"cnk:food/grapes"}
data modify storage cnk:temp fizz.trading.trade.buy set from storage cnk:temp loot_table.data
data modify storage cnk:temp fizz.trading.trade.buy.count set value 16

data modify storage cnk:temp fizz.trading.trade.sell set value {id:"minecraft:emerald", count:2}
data modify storage cnk:temp fizz.trading.trade.rewardExp set value true
data modify storage cnk:temp fizz.trading.trade.maxUses set value 12

data modify storage cnk:temp fizz.trades append from storage cnk:temp fizz.trading.trade