tag @s add cnk.fizz_trading
data modify storage cnk:temp fizz.trades set value []
data remove storage cnk:temp fizz.trading

# populate the buy list
execute as @p[distance=..10] run function cnk:fizz/trading/buy/main

execute store result score $count cnk.dummy run random value 5..7
function cnk:fizz/trading/generate

data modify entity @s Offers.Recipes set from storage cnk:temp fizz.trades