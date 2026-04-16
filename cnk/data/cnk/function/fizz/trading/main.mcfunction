tag @s add cnk.fizz_trading
data modify storage cnk:temp fizz.trades set value []
data remove storage cnk:temp fizz.trading

# populate the buy list
execute as @p[gamemode=!spectator,distance=..10] run function cnk:fizz/trading/buy/main

execute store result score $count cnk.dummy run random value 5..7
function cnk:fizz/trading/generate

data modify entity @s Offers.Recipes set from storage cnk:temp fizz.trades

# store reset time
execute store result score @s cnk.trade_reset_time run time query gametime
scoreboard players set $day cnk.dummy 24000
scoreboard players operation $day cnk.dummy *= $trade_reset_time cnk.dummy
scoreboard players operation @s cnk.trade_reset_time += $day cnk.dummy