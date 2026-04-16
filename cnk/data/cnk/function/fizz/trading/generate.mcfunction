scoreboard players remove $count cnk.dummy 1
data remove storage cnk:temp fizz.trading.trade

# pick buy
function cnk:fizz/trading/pick/main
data modify storage cnk:temp fizz.trading.trade.buy set from storage cnk:temp fizz.trading.item

# add sell
function cnk:loot_table_to_data/main {loot_table:"cnk:other/fizz_gift"}
data modify storage cnk:temp fizz.trading.trade.sell set from storage cnk:temp loot_table.data

data modify storage cnk:temp fizz.trading.trade.rewardExp set value true
data modify storage cnk:temp fizz.trading.trade.maxUses set value 1

data modify storage cnk:temp fizz.trades append from storage cnk:temp fizz.trading.trade

execute if score $count cnk.dummy matches 1.. run function cnk:fizz/trading/generate