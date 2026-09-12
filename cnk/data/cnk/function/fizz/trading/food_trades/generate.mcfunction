scoreboard players remove $count cnk.dummy 1

data modify storage cnk:temp fizz.trading.trade set value {rewardExp:true, maxUses:1}

# pick buy
data modify storage cnk:temp loot_table.entries set from storage cnk:temp fizz.food_trades
function cnk:loot_table/random_to_data

# add buy/sell
data modify storage cnk:temp fizz.trading.trade.buy set from storage cnk:temp loot_table.output
data modify storage cnk:temp fizz.trading.trade.sell set from storage cnk:temp fizz.lily_pad_parcel

# append to trades
data modify storage cnk:temp fizz.trades append from storage cnk:temp fizz.trading.trade

# loop
execute if score $count cnk.dummy matches 1.. run function cnk:fizz/trading/food_trades/generate