data modify storage cnk:temp fizz.trades set value []

# add standard trades
data modify storage cnk:temp fizz.trading.trade set value {sell:{id:"minecraft:emerald", count:2}, rewardExp:true, maxUses:8}
function cnk:loot_table/to_data {loot_table:"cnk:technical/fizz/trades/vegetable"}
data modify storage cnk:temp fizz.trading.trade.buy set from storage cnk:temp loot_table.output
data modify storage cnk:temp fizz.trades append from storage cnk:temp fizz.trading.trade

data modify storage cnk:temp fizz.trading.trade set value {sell:{id:"minecraft:emerald", count:2}, rewardExp:true, maxUses:12}
function cnk:loot_table/to_data {loot_table:"cnk:technical/fizz/trades/cnk_vegetable"}
data modify storage cnk:temp fizz.trading.trade.buy set from storage cnk:temp loot_table.output
data modify storage cnk:temp fizz.trades append from storage cnk:temp fizz.trading.trade

data modify storage cnk:temp fizz.trading.trade set value {buy:{id:"minecraft:emerald", count:1}, rewardExp:true, maxUses:8}
function cnk:loot_table/to_data {loot_table:"cnk:technical/fizz/trades/meat"}
data modify storage cnk:temp fizz.trading.trade.sell set from storage cnk:temp loot_table.output
data modify storage cnk:temp fizz.trades append from storage cnk:temp fizz.trading.trade

# store lily pad parcel data
function cnk:loot_table/to_data {loot_table:"cnk:other/lily_pad_parcel"}
data modify storage cnk:temp fizz.lily_pad_parcel set from storage cnk:temp loot_table.output

# populate the buy list
execute as @p[gamemode=!spectator,distance=..10] run function cnk:fizz/trading/food_trades/populate

# add food trades
scoreboard players set $count cnk.dummy 4
execute store result score $item_count cnk.dummy run data get storage cnk:temp fizz.food_trades
execute if score $count cnk.dummy > $item_count cnk.dummy run scoreboard players operation $count cnk.dummy = $item_count cnk.dummy
function cnk:fizz/trading/food_trades/generate

# set trades on fizz
data modify entity @s Offers.Recipes set from storage cnk:temp fizz.trades

# mark as trading
tag @s add cnk.fizz_trading

# store reset time
execute store result score @s cnk.trade_reset_time run time query gametime
scoreboard players set $day cnk.dummy 24000
scoreboard players operation $day cnk.dummy *= $trade_reset_time cnk.dummy
scoreboard players operation @s cnk.trade_reset_time += $day cnk.dummy