# handle trades
execute if entity @s[tag=!cnk.fizz_trading] if entity @p[gamemode=!spectator,distance=..10] run function cnk:fizz/trading/main

# check trade reset time
execute if score @s cnk.trade_reset_time <= $gametime cnk.dummy run function cnk:fizz/trading/reset