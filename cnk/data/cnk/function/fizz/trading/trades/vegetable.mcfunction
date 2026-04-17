execute store result score $choice cnk.dummy run random value 1..5
execute if score $choice cnk.dummy matches 1 run data modify storage cnk:temp fizz.trading.trade.buy set value {id:"minecraft:potato"}
execute if score $choice cnk.dummy matches 2 run data modify storage cnk:temp fizz.trading.trade.buy set value {id:"minecraft:carrot"}
execute if score $choice cnk.dummy matches 3 run data modify storage cnk:temp fizz.trading.trade.buy set value {id:"minecraft:wheat"}
execute if score $choice cnk.dummy matches 4 run data modify storage cnk:temp fizz.trading.trade.buy set value {id:"minecraft:beetroot"}
execute if score $choice cnk.dummy matches 5 run data modify storage cnk:temp fizz.trading.trade.buy set value {id:"minecraft:pumpkin"}
data modify storage cnk:temp fizz.trading.trade.buy.count set value 16

data modify storage cnk:temp fizz.trading.trade.sell set value {id:"minecraft:emerald", count:2}
data modify storage cnk:temp fizz.trading.trade.rewardExp set value true
data modify storage cnk:temp fizz.trading.trade.maxUses set value 8

data modify storage cnk:temp fizz.trades append from storage cnk:temp fizz.trading.trade