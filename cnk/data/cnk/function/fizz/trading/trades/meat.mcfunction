execute store result score $choice cnk.dummy run random value 1..7
execute if score $choice cnk.dummy matches 1 run data modify storage cnk:temp fizz.trading.trade.sell set value {id:"minecraft:beef"}
execute if score $choice cnk.dummy matches 2 run data modify storage cnk:temp fizz.trading.trade.sell set value {id:"minecraft:chicken"}
execute if score $choice cnk.dummy matches 3 run data modify storage cnk:temp fizz.trading.trade.sell set value {id:"minecraft:salmon"}
execute if score $choice cnk.dummy matches 4 run data modify storage cnk:temp fizz.trading.trade.sell set value {id:"minecraft:mutton"}
execute if score $choice cnk.dummy matches 5 run data modify storage cnk:temp fizz.trading.trade.sell set value {id:"minecraft:porkchop"}
execute if score $choice cnk.dummy matches 6 run data modify storage cnk:temp fizz.trading.trade.sell set value {id:"minecraft:rabbit"}
execute if score $choice cnk.dummy matches 7 run data modify storage cnk:temp fizz.trading.trade.sell set value {id:"minecraft:cod"}
data modify storage cnk:temp fizz.trading.trade.sell.count set value 8

data modify storage cnk:temp fizz.trading.trade.buy set value {id:"minecraft:emerald", count:1}
data modify storage cnk:temp fizz.trading.trade.rewardExp set value true
data modify storage cnk:temp fizz.trading.trade.maxUses set value 8

data modify storage cnk:temp fizz.trades append from storage cnk:temp fizz.trading.trade